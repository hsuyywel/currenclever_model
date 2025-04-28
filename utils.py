# utils.py
import pandas as pd
import numpy as np
from sklearn.ensemble import RandomForestRegressor
import mysql.connector

# ✅ Load and prepare exchange rate dataset
gbp_exchange_rates_df = pd.read_csv("data/GBP_ExchangeRates_Daily.csv", parse_dates=["Date"])
gbp_exchange_rates_df["Date"] = pd.to_datetime(gbp_exchange_rates_df["Date"]).dt.strftime("%Y-%m-%d")
currency_df = gbp_exchange_rates_df.dropna()
plot_df = currency_df.copy()
plot_df['Date'] = pd.to_datetime(plot_df['Date'])
plot_df = plot_df.sort_values(by='Date')

# ✅ Currency Exchange Prediction
def load_model_and_predict(currency, start_date=None, end_date=None, window_size=60):
    import datetime
    from statsmodels.tsa.arima.model import ARIMA
    from tensorflow.keras.losses import MeanSquaredError
    from tensorflow.keras.models import load_model
    import tensorflow as tf
    import joblib

    custom_objects = {"mse": MeanSquaredError()}
    model = load_model(f'models/model_{currency}.h5', custom_objects=custom_objects)
    model.compile(optimizer='adam', loss=tf.keras.losses.MeanSquaredError())
    scaler = joblib.load(f'models/scaler_{currency}.pkl')

    data = plot_df.copy()
    data['Date'] = pd.to_datetime(data['Date'])
    data.set_index('Date', inplace=True)

    if start_date is None or end_date is None:
        start_date = datetime.date.today()
        end_date = start_date + datetime.timedelta(days=6)
    else:
        start_date = pd.to_datetime(start_date)
        end_date = pd.to_datetime(end_date)

    last_window = data[currency].iloc[-window_size:].values.reshape(-1, 1)
    last_window = scaler.transform(last_window)

    predictions = []
    current_window = last_window
    future_dates = pd.date_range(start=start_date, end=end_date)

    arima_model = ARIMA(data[currency].dropna(), order=(2, 1, 2)).fit()

    for date in future_dates:
        pred = model.predict(current_window.reshape(1, window_size, 1))
        pred_value = scaler.inverse_transform(pred)[0, 0]
        arima_forecast = arima_model.forecast(steps=1).iloc[0]
        pred_value = (pred_value + arima_forecast) / 2
        predictions.append((date.strftime("%Y-%m-%d"), round(pred_value, 3)))
        current_window = np.append(current_window[1:], pred, axis=0)

    return predictions

# ✅ Save prediction to MySQL
def save_predictions_to_db(email, month, year, predictions, category_order):
    conn = mysql.connector.connect(
        host="ballast.proxy.rlwy.net",
        user="root",
        port="19572",
        password="WNgnXQcJDKLHIlOzyiZohpjfrcXKONae",
        database="railway"
    )
    cursor = conn.cursor()

    # ✅ Check for duplicates
    cursor.execute("""
        SELECT COUNT(*) FROM budget_estimations
        WHERE user_email = %s AND month = %s AND year = %s
    """, (email, month, year))
    existing_count = cursor.fetchone()[0]

    if existing_count == 0:
        for i, amount in enumerate(predictions):
            category = category_order[i]
            cursor.execute("""
                INSERT INTO budget_estimations (user_email, month, year, category, predicted_amount)
                VALUES (%s, %s, %s, %s, %s)
            """, (email, month, year, category, amount))
        conn.commit()

    conn.close()

# ✅ Estimate Budget (with optional month/year + income)
def estimate_budget_for_user(email, month=None, year=None):
    conn = mysql.connector.connect(
        host="ballast.proxy.rlwy.net",
        user="root",
        port="19572",
        password="WNgnXQcJDKLHIlOzyiZohpjfrcXKONae",
        database="railway",
        # connect_timeout=10,
        # connection_pool_size=5
    )
    cursor = conn.cursor(dictionary=True)

    # Fetch user expenses
    cursor.execute("""
        SELECT amount, category, date
        FROM expenses
        WHERE user_email = %s
    """, (email,))
    expenses = cursor.fetchall()

    # Fetch user income
    cursor.execute("""
        SELECT amount, date
        FROM income
        WHERE user_email = %s
    """, (email,))
    incomes = cursor.fetchall()

    conn.close()

    if not expenses:
        return [], []

    df_exp = pd.DataFrame(expenses)
    df_exp['date'] = pd.to_datetime(df_exp['date'])
    df_exp['month'] = df_exp['date'].dt.to_period('M').astype(str)

    df_inc = pd.DataFrame(incomes)
    if not df_inc.empty:
        df_inc['date'] = pd.to_datetime(df_inc['date'])
        df_inc['month'] = df_inc['date'].dt.to_period('M').astype(str)
        df_income = df_inc.groupby('month')['amount'].sum()
    else:
        df_income = pd.Series(dtype='float64')

    df_grouped = df_exp.pivot_table(index='month', columns='category', values='amount', aggfunc='sum').fillna(0)
    df_grouped = df_grouped.sort_index()

    df_grouped['income'] = df_income
    df_grouped['income'] = df_grouped['income'].fillna(method='ffill').fillna(0)

    category_order = ["Food", "Groceries", "Fashion", "Leisures", "Accommodation", "Insurance", "Miscellaneous"]

    selected_period = f"{year}-{str(month).zfill(2)}"
    actual = df_grouped.loc[selected_period].reindex(category_order, fill_value=0).astype(float).tolist() if selected_period in df_grouped.index else [0.0 for _ in category_order]

    # Only use data before selected month for prediction
    past_df = df_grouped[df_grouped.index < selected_period]
    predicted = []

    try:
        if past_df.empty:
            raise Exception("Not enough data to predict")

        X = np.arange(len(past_df)).reshape(-1, 1)
        income_col = past_df['income'].values.reshape(-1, 1)
        X_combined = np.hstack([X, income_col])

        for category in category_order:
            y = past_df.get(category, pd.Series([0] * len(past_df))).values
            model = RandomForestRegressor(n_estimators=100, random_state=42)
            model.fit(X_combined, y)
            future_index = np.array([[len(past_df), df_grouped['income'].iloc[-1]]])
            pred = model.predict(future_index)[0]
            predicted.append(round(pred, 2))

        selected_date = pd.to_datetime(f"{year}-{str(month).zfill(2)}-01")
        next_month_date = selected_date + pd.DateOffset(months=1)
        next_month = next_month_date.month
        next_year = next_month_date.year

        save_predictions_to_db(email, next_month, next_year, predicted, category_order)

    except Exception as e:
        print("⚠️ Prediction error:", e)
        predicted = [0.0 for _ in category_order]

    return actual, predicted

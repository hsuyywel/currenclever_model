# utils.py
#changes
import pandas as pd

# Load and prepare exchange rate dataset
gbp_exchange_rates_df = pd.read_csv("data/GBP_ExchangeRates_Daily.csv", parse_dates=["Date"])
gbp_exchange_rates_df["Date"] = pd.to_datetime(gbp_exchange_rates_df["Date"]).dt.strftime("%Y-%m-%d")
currency_df = gbp_exchange_rates_df.dropna()
plot_df = currency_df.copy()
plot_df['Date'] = pd.to_datetime(plot_df['Date'])
plot_df = plot_df.sort_values(by='Date')


def load_model_and_predict(currency, start_date=None, end_date=None, window_size=60):
    import datetime
    from statsmodels.tsa.arima.model import ARIMA
    from tensorflow.keras.losses import MeanSquaredError # type: ignore
    from tensorflow.keras.models import load_model # type: ignore
    import tensorflow as tf
    import pandas as pd
    import numpy as np
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
        end_date = start_date + datetime.timedelta(days=6)  # 7-day forecast
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

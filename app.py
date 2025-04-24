from flask import Flask, request, jsonify, make_response  # type: ignore
from flask_cors import CORS  # ✅ removed cross_origin
from utils import load_model_and_predict, estimate_budget_for_user
import os

app = Flask(__name__)

# ✅ Enable CORS for all routes from your Vite frontend
CORS(app, resources={r"/*": {
    "origins": ["http://localhost:5173", "http://127.0.0.1:5173"],
    "methods": ["GET", "POST", "OPTIONS"],
    "allow_headers": ["Content-Type"]
}})

# ✅ Optional fallback to ensure headers always included
@app.after_request
def after_request(response):
    response.headers.add('Access-Control-Allow-Origin', 'http://localhost:5173')
    response.headers.add('Access-Control-Allow-Headers', 'Content-Type,Authorization')
    response.headers.add('Access-Control-Allow-Methods', 'GET,POST,OPTIONS')
    return response

@app.route('/')
def home():
    return "Currency Exchange Prediction API is running!"

# ✅ Currency Exchange Endpoint
@app.route('/predict', methods=['POST', 'OPTIONS'])
def predict():
    if request.method == 'OPTIONS':
        return '', 204  # Preflight

    try:
        data = request.get_json()
        currency_key = data.get("currency")  # Expect something like "GBP_USD"

        if not currency_key:
            return jsonify({"error": "Currency parameter is required."}), 400

        model_path = f"models/model_{currency_key}.h5"
        scaler_path = f"models/scaler_{currency_key}.pkl"

        if not os.path.exists(model_path) or not os.path.exists(scaler_path):
            return jsonify({"error": f"Model or scaler for {currency_key} not found."}), 404

        predictions = load_model_and_predict(currency_key)
        return jsonify(predictions)

    except Exception as e:
        return jsonify({"error": str(e)}), 500

# ✅ Budget Estimation Endpoint
@app.route('/budget', methods=['GET', 'OPTIONS'])
def budget_estimation():
    if request.method == 'OPTIONS':
        return '', 204  # Preflight

    email = request.args.get('email')
    month = request.args.get('month')
    year = request.args.get('year')

    if not email:
        return jsonify({"error": "Email parameter is required."}), 400

    try:
        actual, estimated = estimate_budget_for_user(email, month, year)
        print("🔍 EMAIL:", email)
        print("✅ Actual:", actual)
        print("📈 Estimated:", estimated)

        return jsonify({"actual": actual, "estimated": estimated})
    except Exception as e:
        return jsonify({"error": str(e)}), 500

@app.route('/test')
def test():
    print("✅ /test route hit")
    return "Test route is working!"

if __name__ == '__main__':
    print("🚀 Starting Prediction API test...")
    app.run(host='127.0.0.1', port=5000, debug=True)

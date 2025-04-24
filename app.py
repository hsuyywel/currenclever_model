from flask import Flask, request, jsonify
from flask_cors import CORS, cross_origin
from utils import load_model_and_predict
import os

app = Flask(__name__)

# ✅ Enable CORS for Vite frontend
CORS(app, resources={r"/*": {"origins": "http://localhost:5173"}})

@app.route('/')
def home():
    return "Currency Exchange Prediction API is running!"

# ✅ Handle POST and preflight OPTIONS
@app.route('/predict', methods=['POST', 'OPTIONS'])
@cross_origin(origin='http://localhost:5173', headers=['Content-Type'])
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
    
if __name__ == '__main__':
    print("🚀 Starting Currency Exchange Prediction API...")
    app.run(host='127.0.0.1', port=5000, debug=True)

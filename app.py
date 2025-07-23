from flask import Flask, request, jsonify, render_template
import mysql.connector
import requests

app = Flask(__name__)

# --- MySQL Configuration ---
db_config = {
    "host": "localhost",
    "user": "root",
    "password": "Lokesh@123",
    "database": "tutorial"
}

# --- JDoodle Configuration ---
JDoodle_CLIENT_ID = "57588309f5301702536339af624d1fa5"
JDoodle_CLIENT_SECRET = "95f732522d2f4f8ae9b9de16217e5a89cb9ada642c84797af1af787cc64664ba"
JDoodle_URL = "https://api.jdoodle.com/v1/execute"

# --- Routes ---

@app.route("/")
def home():
    return render_template("learn.html")

@app.route("/index")
def index():
    return render_template("index.html")

@app.route("/topics/<language>")
def get_topics(language):
    try:
        conn = mysql.connector.connect(**db_config)
        cursor = conn.cursor()
        cursor.execute("""
            SELECT topic_name 
            FROM topics 
            WHERE language = %s 
            ORDER BY topic_order
        """, (language,))
        topics = [row[0] for row in cursor.fetchall()]
        return jsonify(topics)
    finally:
        cursor.close()
        conn.close()

@app.route("/content/<language>/<topic>")
def get_content(language, topic):
    try:
        conn = mysql.connector.connect(**db_config)
        cursor = conn.cursor()
        cursor.execute("""
            SELECT content, code 
            FROM topics 
            WHERE language = %s AND topic_name = %s
        """, (language, topic))
        result = cursor.fetchone()
        if result:
            return jsonify({"content": result[0], "code": result[1]})
        return jsonify({"error": "Content not found"}), 404
    finally:
        cursor.close()
        conn.close()

@app.route("/run-code", methods=["POST"])
def run_code():
    data = request.get_json()
    language = data.get("language")
    code = data.get("code")

    if not language or not code:
        return jsonify({"error": "Language and code are required"}), 400

    payload = {
        "clientId": JDoodle_CLIENT_ID,
        "clientSecret": JDoodle_CLIENT_SECRET,
        "script": code,
        "language": language,
        "versionIndex": "0"
    }

    try:
        response = requests.post(JDoodle_URL, json=payload)
        return jsonify(response.json())
    except Exception as e:
        return jsonify({"error": str(e)}), 500

# --- Run App ---
if __name__ == "__main__":
    app.run(debug=True)

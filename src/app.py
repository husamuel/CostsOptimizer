from flask import Flask
import random
import time

app = Flask(__name__)

@app.route("/")
def home():
    work = sum([i*i for i in range(10000)])
    time.sleep(random.uniform(0.1, 0.5))
    return f"Hello, CostsOptimizer! Work done: {work}"

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=8080)

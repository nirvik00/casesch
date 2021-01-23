from flask import Flask
import jsonify
app = Flask(__name__)


@app.route("/")
def hello():
    return "Hello, World from nirvik!"


@app.route("/get", methods=["GEt"])
def getApi():
    return jsonify({"msg": "Hello get req"})


if __name__ == "__main__":
    app.run()

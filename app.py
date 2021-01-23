from flask import Flask, jsonify
app = Flask(__name__)


@app.route("/")
def hello():
    return "Hello, World from nirvik saha!"


@app.route("/get", methods=["GET"])
def getApi():
    # return jsonify({'message': 'hello'})
    return jsonify({'x': 'get request'})


if __name__ == "__main__":
    app.run()

from flask import Flask, jsonify, render_template
app = Flask(__name__)


@app.route("/")
def hello():
    return "Hello, World from nirvik saha!"


@app.route("/get", methods=["GET"])
def get_req():
    return jsonify({"get": "get request"})


@app.route("/view", methods=["GET"])
def runHTML():
    return render_template("index.html")


if __name__ == "__main__":
    app.run()

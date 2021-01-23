from flask import Flask
app = Flask(__name__)


@app.route("/")
def hello():
    return "Hello, World from nirvik saha!"


@app.route("/get", methods=["GET"])
def get_req():
    return "get request


if __name__ == "__main__":
    app.run()

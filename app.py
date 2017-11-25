from flask import Flask
import socket
app = Flask(__name__)

@app.route("/")
def hello():
    return "Hello World!\n"

@app.route("/host")
def host():
    return "Hello from:\n" + socket.gethostname()

@app.route("/version")
def version():
    return "helloworld 1.0.0\n"

if __name__ == "__main__":
    app.run(host='0.0.0.0')
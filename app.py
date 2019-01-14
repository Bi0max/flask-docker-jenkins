import sys
from flask import Flask
app = Flask(__name__)


@app.route('/')
def hello_world():
    s = "Flask Dockerized Update through volume #1 \n" + str(sys.version)
    s += "\n"
    with open("test.txt", "r") as f:
        for line in f:
            s += line
    
    return s


if __name__ == '__main__':
    app.run(debug=True, host='0.0.0.0')

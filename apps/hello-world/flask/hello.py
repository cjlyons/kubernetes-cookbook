from markupsafe import escape
from flask import Flask
from flask import json
from flask_healthz import healthz
from greeting import Greeting

app = Flask(__name__)
app.register_blueprint(healthz, url_prefix="/monitor/health")
app.config.from_object("defaults")

@app.route('/<string:name>')
def hello(name):
    greeting = Greeting('Hello', escape(name))
    return json.dumps(greeting.__dict__)

def liveness():
    pass

def readiness():
    pass

if __name__ == '__main__':
    app.run()

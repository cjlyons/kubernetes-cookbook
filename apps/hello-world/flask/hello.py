from markupsafe import escape
from flask import Flask
from flask_healthz import healthz

app = Flask(__name__)
app.register_blueprint(healthz, url_prefix="/monitor/health")
app.config.from_object("defaults")

@app.route('/<string:name>')
def hello(name):
    return 'Hello %s' % escape(name)

def liveness():
    pass

def readiness():
    pass

if __name__ == '__main__':
    app.run()

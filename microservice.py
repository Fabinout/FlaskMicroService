from flask import Flask
from healthcheck import HealthCheck, EnvironmentDump

app = Flask(__name__)


# wrap the flask app and give a heathcheck url
health = HealthCheck(app, "/healthcheck")
envdump = EnvironmentDump(app, "/environment")


@app.route('/pythons')
def hello_world():
    return 'Hello World!'


if __name__ == '__main__':
    app.run()

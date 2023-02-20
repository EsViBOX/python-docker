import mariadb
from flask import Flask

app = Flask(__name__)

err = "OK"
try:
    conn = mariadb.connect(
        user="sample",
        password="Rut3.sample",
        host="app-db",
        database="sample"
    )
except mariadb.Error as e:
    err = f"Error: {e}"
    print(err)


@app.route('/')
def hello_world():
    return 'Hello, Docker!' + err

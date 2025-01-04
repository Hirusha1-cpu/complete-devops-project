from flask import Flask
import time

app = Flask(__name__)
def get_current_time():
    current_time = time.strftime("%Y-%m-%d  %H:%M   %S", time.localtime())
    return f"The Current Time: {current_time}"

if __name__ == "__main__":
    app.run(host='0.0.0.0', port=8080)
    
    
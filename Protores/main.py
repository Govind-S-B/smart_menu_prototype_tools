from flask import Flask, request, jsonify
Password = "00234"
App = Flask(__name__)
@App.route("/RestApi")
def Check():
    inp = request.args["query"]
    if inp == str(Password):
        return "1"
    else:
        return "0"
        
if __name__ == '__main__':
  App.run(host='0.0.0.0', port=5000)
# from flask import Flask, request, jsonify
import flask

Password = "00234"
App = flask.Flask(__name__)
Table_id = []

@App.route("/RestApi", methods=['GET'])
def Check():
    inp = flask.request.args["query"]
    if inp == str(Password):
        val = 1
    else:
        val = 0
    response = flask.jsonify({'PIN_auth': str(val)})
    response.headers.add('Access-Control-Allow-Origin', '*')
    response.mimetype = "application/json"
    return response

if __name__ == '__main__':
    App.run(host='0.0.0.0', port=5000)

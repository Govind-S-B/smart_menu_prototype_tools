# from flask import Flask, request, jsonify
import flask

Password = "00234"
App = flask.Flask(__name__)
Table_id = []

@App.route("/RestApi", methods=['GET'])
def Check():
    inp = flask.request.args["query"]
    inp2 = flask.request.args["id"]
    if inp == str(Password):
        val = 1
    else:
        val = 0
    Table_id.append(str(inp2))
    response = flask.jsonify({'PIN_auth': str(val)})
    response.headers.add('Access-Control-Allow-Origin', '*')
    response.mimetype = "application/json"
    print(Table_id)
    return response



if __name__ == '__main__':
    App.run(host='0.0.0.0', port=5000)

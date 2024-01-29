from flask import Flask, jsonify, request
 

app = Flask(__name__)

@app.route('/')
def hello_world():
   return 'Hello World..'


# @app.route('/test_route')
# def test():
#    return 'Hello this is test route..'

@app.route('/new_route')
def new_route():
   return 'Hello this is new route..'



if __name__ == '__main__':
   app.run(host='0.0.0.0')
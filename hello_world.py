from flask import Flask

app = Flask(__name__)

def wrap_html(message):
    html = """
        <html>
        <body>
            <div style='font-size:80px;'>
            <center>
                <image height="600" width="531" src="https://upload.wikimedia.org/wikipedia/commons/thumb/2/28/HelloWorld.svg/1024px-HelloWorld.svg.png">
                <br>
                {0}<br>
            </center>
            </div>
        </body>
        </html>""".format(message)
    return html

@app.route('/')
def hello_world():
    message = 'Hello World!'
    html = wrap_html(message)
    return html

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)
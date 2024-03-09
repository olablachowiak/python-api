from quart import Quart, render_template, websocket

app = Quart(__name__)

@app.route("/health")
async def health():
    return {
        "status": 200,
        "message": "OK",
    }

@app.route("/")
async def catch_all():
    return {
        "status": 404,
        "message": "Not Found"
    }

if __name__ == "__main__":
    app.run()
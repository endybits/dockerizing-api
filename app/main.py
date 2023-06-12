from fastapi import FastAPI

app = FastAPI()

@app.get('/')
def home():
    return {
        'project': "Dockerizing...",
        'msg': "Hello world!",
        'env': "This API is running in a Docker Container"
    }
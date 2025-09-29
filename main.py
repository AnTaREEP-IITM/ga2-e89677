from fastapi import FastAPI
app = FastAPI()
@app.get("/")
def read_root():
    return {"message": "Deployment-ready-ga2-e89677 is running!"}

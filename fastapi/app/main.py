from typing import Optional

from fastapi import FastAPI

app = FastAPI()



# regex같은 것. 슬래시 뒤 단어에 민감하므로 주의!!
@app.get("/")
async def root():
    return {"message": "Backend"}

@app.get("/api")
def read_api():
    return {"api": "sucess!"}


@app.get("/items/{item_id}")
def read_item(item_id: int, q: Optional[str] = None):
    return {"item_id": item_id, "q": q}


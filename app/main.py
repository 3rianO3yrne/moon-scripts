from fastapi import FastAPI, Depends
from typing import Union

from .horizons import main

app = FastAPI()


@app.get("/")
def read_root():
    main.run()
    return {"Hello": "World"}

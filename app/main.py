from fastapi import FastAPI
import httpx
import json, os
from pydantic import BaseModel
from typing import List, Optional, Dict, Any

# Initialize FastAPI app
app = FastAPI()
# Initialize the HTTP client
#client = client(transport=WSGITransport(app=app))

@app.get("/")
async def test():
    return {"message": "OK"}

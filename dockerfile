# Start with the FastAPI base image
#FROM tiangolo/uvicorn-gunicorn-fastapi:python3.9
#WORKDIR /app
#COPY . /app
#RUN pip install --no-cache-dir firebase-admin pydantic
#EXPOSE 8001
#COPY .env /app
# Set environment variables from .env file
#ENV ENV_FILE_LOCATION=/app/.env
# Use an official Python runtime as a parent image
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Install FastAPI and Uvicorn
RUN pip install --no-cache-dir fastapi uvicorn

# Make port 80 available to the world outside this container
EXPOSE 80

# Define environment variable
ENV NAME World

# Run app.py when the container launches
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "80"]

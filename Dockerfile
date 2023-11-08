# Use an official Python runtime as a base image
FROM python:3.9-slim

# Set the working directory in the container to /app
WORKDIR /app

# Copy only the script into the container at /app
COPY app.py /app/

# Run app.py when the container launches
CMD ["python", "app.py"]

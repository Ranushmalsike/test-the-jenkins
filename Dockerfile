# Use the official Python image from the Docker Hub
FROM python:3.10-slim

# Set the working directory inside the container
WORKDIR /app

# Copy your Python script into the container
COPY hello_world.py .

# Install any dependencies (if you have a requirements.txt, for example)
# COPY requirements.txt .
# RUN pip install --no-cache-dir -r requirements.txt

# Command to run your script
CMD ["python", "helow.py"]

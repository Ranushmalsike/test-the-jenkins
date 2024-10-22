# Use a lightweight Python image
FROM python:3.9-slim

# Set the working directory
WORKDIR /app

# Copy the Python file into the container
COPY helow.py .

# Command to run the Python script
CMD ["python", "helow.py"]

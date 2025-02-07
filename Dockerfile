# Use an official lightweight Python image
FROM python:3.11-slim

# Set the working directory
WORKDIR /app

# Copy all necessary files
COPY . .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Start a simple HTTP server for the health check & run bot.py
CMD python3 -m http.server 8000 --bind 0.0.0.0 --directory /app & python3 bot.py

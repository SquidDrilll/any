# Use an official lightweight Python image
FROM python:3.11-slim

# Set the working directory
WORKDIR /app

# Copy all necessary files
COPY . .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Start a simple HTTP server for the health check & run bot.py
CMD (echo -e "HTTP/1.1 200 OK\n\nyour self bot is alive." | nc -l -p 8000 -q 1) & python3 bot.py

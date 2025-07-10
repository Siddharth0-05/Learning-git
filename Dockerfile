# Use Python as base image
FROM python:3.9-slim

# Set working directory
WORKDIR /app

# Copy our website files
COPY index.html .
COPY app.py .
COPY ./assets ./assets

# Expose port 8080
EXPOSE 8080

# Run our web server
CMD ["python", "app.py"]

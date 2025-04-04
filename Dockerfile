# Use Python base image
FROM python:3.9

# Set working directory
WORKDIR /app

# Copy source code
COPY app.py .

# Install dependencies
RUN pip install flask

# Expose port
EXPOSE 5000

# Run the application
CMD ["python", "app.py"]

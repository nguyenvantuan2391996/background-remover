# Use the official Python image as a base
FROM python:3.11-slim

# Set the working directory in the container
WORKDIR /app

# Copy the application files to the container
COPY . /app

# Install required dependencies
RUN pip install -r requirements.txt

# Expose the port Streamlit runs on
EXPOSE 8501

# Start the Streamlit application
CMD ["streamlit", "run", "bg_remover.py", "--server.port=8501", "--server.address=0.0.0.0"]

# Use an official Python runtime as a parent image
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Install git
RUN apt-get update && apt-get install -y git

# Install aider
RUN pip install aider-chat

# Set environment variables
ENV ANTHROPIC_API_KEY=""
ENV OPENAI_API_KEY=""

# Run aider when the container launches
CMD ["aider"]

# Use an official Python runtime as a parent image
FROM python:3.9-slim-buster

# Set the working directory in the container to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
ADD . /app

# Install any needed packages specified in requirements.txt
RUN pip3 install --upgrade pip && \
    pip3 install openai gpt_index==0.4.24 langchain==0.0.118 PyPDF2 PyCryptodome gradio

# Make port 7860 available to the world outside this container
EXPOSE 7860

# Run bot.py when the container launches
CMD ["python3", "bot.py"]

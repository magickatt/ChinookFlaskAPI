# Use an official Python runtime as a base image
FROM python:3.6.6-stretch

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
ADD . /app

# Install any needed packages specified in Pipfile
RUN pip install pipenv
RUN pipenv install

# Make port 5000 available to the world outside this container
EXPOSE 5000

# Define the Flask entrypoint
ENV FLASK_APP app.py

# Run Flask development application server for now
CMD ["pipenv", "run", "flask", "run"]

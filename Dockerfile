# Use an official Python runtime as a base image
FROM python:3.7.7-stretch

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

# Run Flask using gunicorn
CMD ["gunicorn", "--bind", "0.0.0.0:5000", "wsgi:application"]

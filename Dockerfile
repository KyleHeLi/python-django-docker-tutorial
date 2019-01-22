# Use an official Python runtime as a parent image
FROM python:3.6

# ENV PYTHONUNBUFFERED 1

# Install OS dependecies
RUN apt-get update && apt-get upgrade -y && apt-get install -y \
libsqlite3-dev
RUN apt-get install dos2unix
RUN pip install -U pip setuptools

# Set the working directory to /app
WORKDIR /webapps

# Copy the current directory contents into the container at /app
COPY . /webapps

# Install any needed packages specified in requirements.txt
RUN pip install --trusted-host pypi.python.org -r /webapps/requirements.txt

# Make port 8000 available ot the world outside this container
EXPOSE 8000

# Define environment variable
ENV NAME Boards

# Run manage.py when the container launches
CMD ["bash", "/webapps/start.sh"]
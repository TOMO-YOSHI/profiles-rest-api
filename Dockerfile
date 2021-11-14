# pull official base image
FROM python:3
ENV PYTHONUNBUFFERED=1

# Set the working directory to /profiles-rest-api
WORKDIR /profiles-rest-api

# copy requirements.txt into the container at /profiles-rest-api/
COPY requirements.txt /profiles-rest-api/

# install dependencies
# RUN pip instyall -r requirements.txt

# Copy the current directory contents into the container at /profiles-rest-api
COPY . /profiles-rest-api/

# Make port 3000 available to the world outside this container
# Development mode
EXPOSE 5554

# Start program
# ADD start.sh /
# RUN chmod +x /start.sh

# CMD ["/start.sh"]
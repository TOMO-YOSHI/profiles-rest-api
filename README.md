# profiles-rest-api

https://docs.docker.com/samples/django/

## How to use
### Docker build command
docker build -t profiles-rest-api:latest .

### Docker run command
docker run -v "$(pwd)":/profiles-rest-api/ -t -d -p 5554:5554 --name profiles-rest-api-container profiles-rest-api

<!-- docker run --mount type=bind,source=/,target=/profiles-rest-api/ -t -d -p 5554:5554 --name profiles-rest-api-container profiles-rest-api -->

### Docker remove command
docker rm profiles-rest-api-container

### Docker exec command
docker exec -it profiles-rest-api-container bash

### Run server
python manage.py runserver 0.0.0.0:5554
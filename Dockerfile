FROM ubuntu:latest
MAINTAINER Fabien Lamarque "fabienlamarque@gmail.com"
RUN apt-get update -y
RUN apt-get install -y python-pip python-dev build-essential
COPY . /app
WORKDIR /app
#RUN pip install Flask/
RUN pip install -r requirements.txt
ENTRYPOINT ["python"]
CMD ["microservice.py"]
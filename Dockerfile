######################################

#Dockerfile to build python wsgi application containers

#based on ubuntu

####################################

#Set the base image to ubuntu
FROM ubuntu

#File author/maintainer
MAINTAINER maintainer Paul

RUN apt-get update

#install basic applications and tools
RUN apt-get install -y tar git curl nano wget dialog net-tools build-essential

#install python and basic python tools
RUN apt-get install -y python python-dev python-distribute python-pip

# Copy the application folder inside the container
ADD /app /app

#get pip to download and install requirements
RUN pip install -r/app/requirements.txt

#exposer ports 
EXPOSE 8080

#set the default directory where cmd will execute
WORKDIR /app

#set the default command to execute

#when creating a new container

#ie using flask to serve the application

CMD python app.py

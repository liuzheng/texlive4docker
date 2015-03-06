FROM ubuntu:14.04
MAINTAINER liuzheng "liuzheng712@gmail.com"

RUN apt-get update && \
    apt-get install -qqy wget git python-dev python-pip
    
RUN pip install django
RUN git clone https://github.com/liuzheng712/webTeX --depth 1 /opt/webTeX
# Set environment variables.
ENV HOME /root

# Define working directory.
WORKDIR /root
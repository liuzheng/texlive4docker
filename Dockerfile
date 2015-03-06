FROM ubuntu:14.04
MAINTAINER liuzheng "liuzheng712@gmail.com"

RUN apt-get update && \
    apt-get install -qqy wget 
    
# Set environment variables.
ENV HOME /root

# Define working directory.
WORKDIR /root
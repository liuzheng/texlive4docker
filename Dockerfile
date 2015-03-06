FROM ubuntu:14.04
MAINTAINER liuzheng "liuzheng712@gmail.com"
RUN echo "deb http://archive.ubuntu.com/ubuntu precise main universe"> /etc/apt/sources.list
RUN apt-get update
RUN apt-get install -y openssh-server
RUN mkdir -p /var/run/sshd

RUN echo "root:texlive" | chpasswd 

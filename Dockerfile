# VERSION 0.0.1
FROM ubuntu
MAINTAINER liuzheng "liuzheng712@gmail.com"
RUN echo "deb http://archive.ubuntu.com/ubuntu precise main universe"> /etc/apt/sources.list
RUN apt-get update
RUN apt-get install -y openssh-server
RUN mkdir -p /var/run/sshd

# 设置root ssh远程登录密码为123456
RUN echo "root:texlive" | chpasswd 

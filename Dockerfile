FROM ubuntu:14.04
MAINTAINER liuzheng "liuzheng712@gmail.com"

RUN apt-get update && \
    apt-get install -qqy wget git python-dev python-pip p7zip-full expect
    
RUN pip install django
RUN git clone https://github.com/liuzheng712/webTeX --depth 1 /opt/webTeX
RUN wget http://mirrors.ctan.org/systems/texlive/Images/texlive2014-20140525.iso
RUN mkdir /tmp/texlive
RUN 7z x /texlive*.iso -o/tmp/texlive/
RUN chmod +x /tmp/texlive/install-tl
RUN cd /tmp/texlive && expect -c "spawn ./install-tl; expect Enter; send -- \"I\r\"; expect eof "

# Set environment variables.
ENV HOME /root

# Define working directory.
WORKDIR /root

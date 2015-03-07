FROM ubuntu:14.04
MAINTAINER liuzheng "liuzheng712@gmail.com"

RUN apt-get update && \
    apt-get install -qqy wget git python-dev python-pip p7zip-full expect
    
RUN pip install django
RUN git clone https://github.com/liuzheng712/webTeX --depth 1 /opt/webTeX
RUN wget -q http://mirrors.ctan.org/systems/texlive/Images/texlive2014-20140525.iso && \
    mkdir /tmp/texlive && \
    7z x /texlive*.iso -o/tmp/texlive/ && \
    chmod +x /tmp/texlive/install-tl && \
    cd /tmp/texlive && expect -c "spawn ./install-tl; set timeout -1; expect Enter; send -- \"I\r\"; expect eof " && \
    rm /tmp/texlive -fr && \
    rm /texlive*.iso && \
    cd /usr/local/texlive && find -name *.pdf | awk '{print "rm "$1 }'|sh

# Set environment variables.
ENV HOME /root

# Define working directory.
WORKDIR /root

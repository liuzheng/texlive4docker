FROM ubuntu:14.04
MAINTAINER liuzheng "liuzheng712@gmail.com"

RUN apt-get update && \
    apt-get install -qqy wget python-dev python-pip p7zip-full expect libfontconfig1 
    
RUN pip install django
RUN wget -q http://mirrors.ctan.org/systems/texlive/Images/texlive.iso && \
    mkdir /tmp/texlive && \
    7z x /texlive.iso -o/tmp/texlive/ && \
    chmod +x /tmp/texlive/install-tl && \
    cd /tmp/texlive && expect -c "spawn ./install-tl; set timeout -1; expect Enter; send -- \"I\r\"; expect eof " && \
    rm /tmp/texlive -fr && \
    rm /texlive*.iso && \
    cd /usr/local/texlive && find -name *.pdf | awk '{print "rm "$1 }'|sh && \
    rm /usr/local/texlive/texmf-dist/doc -fr

# Set environment variables.
ENV HOME /root

# Define working directory.
WORKDIR /root

ENV PATH  /usr/local/texlive/2014/bin/x86_64-linux:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
ENV MANPATH /usr/local/texlive/2014/texmf/doc/man
ENV INFOPATH /usr/local/texlive/2014/texmf/doc/info

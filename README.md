![nginx 1.7.8](https://img.shields.io/badge/nginx-1.7.8-brightgreen.svg) ![License MIT](https://img.shields.io/badge/license-MIT-blue.svg)

This docker is Based on texlive2014, almost 3.8G

### Usage

To run it:

    $ docker run -d -p 8001:8001 -v /local/TeX/file/path:/tmp/tex liuzheng712/texlive2014
Tip:

    sudo docker ps -a | awk '{print $1}' | grep -v CONTAINER | xargs sudo docker rm
    sudo docker images | grep "<none>" | awk '{print $3}' | xargs sudo docker rmi
    
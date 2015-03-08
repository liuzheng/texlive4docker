![License MIT](https://img.shields.io/badge/license-MIT-blue.svg)
![Django 1.7.5](https://img.shields.io/badge/Django-1.7.5-brightgreen.svg)
![Python 2.7.6](https://img.shields.io/badge/Python-2.7.6-brightgreen.svg)

This docker is Based on texlive2014, almost 2.8G

### Usage(Watting still unfinished)

To run it:

    $ docker run -d -p 8001:8001 -v /local/TeX/file/path:/tmp/tex liuzheng712/texlive2014

Then open you browser and open linke localhost:8001 or 127.0.0.1:8001

## TODO:

 - [ ] font problem, need a good solution let user add their personal fonts. MUST AVOID license problem, don't ask why don't have Adobe Fonts or something like this 

## Tip:

    sudo docker ps -a | awk '{print $1}' | grep -v CONTAINER | xargs sudo docker rm
    sudo docker images | grep "<none>" | awk '{print $3}' | xargs sudo docker rmi
    
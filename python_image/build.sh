## Build image
## ------------
docker build -t python-image .


## Run Container
## -------------
docker run -it --rm --name python-container python-image

## Run with graphics support
## Allow connections to X Server from docker container
#xhost +local:docker
#docker run -it --rm --name python-container -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix python-image

## overide CMD with /bin/bash
# docker run -it --rm --name  python-container python-image /bin/bash
## With graphics support
# docker run -it --rm --name python-container -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix python-image /bin/bash

## overide CMD with hello-turtle.py and run with graphics support
## Allow connections to X Server from docker container
#xhost +local:docker
#docker run -it --rm --name python-container -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix python-image python hello-turtle.py



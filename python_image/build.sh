## Build image
## ------------
docker build -t python-image .


## Run Container 
## -------------
## This will automatically launch the python file in CMD from the Dockerfile
# docker run -it --rm --name python-container python-image

## Run with graphics support
## This will automatically launch the python file in CMD from the Dockerfile
## Allow connections to X Server from docker container
#xhost +local:docker
#docker run -it --rm --name python-container -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix python-image

## overide CMD with /bin/bash so python files can be run directly from the container
# docker run -it --rm --name  python-container python-image /bin/bash
## The same with graphics support
## Allow connections to X Server from docker container
xhost +local:docker
docker run -it --rm --name python-container -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix python-image /bin/bash

## overide CMD with hello-turtle.py and run with graphics support
## Allow connections to X Server from docker container
# xhost +local:docker
# docker run -it --rm --name python-container -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix python-image python hello-turtle.py



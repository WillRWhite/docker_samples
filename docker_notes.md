## General Docker Commands  

**Installing and maintaining Docker**

https://docs.docker.com/engine/install/ubuntu/#:~:text=Install%20from%20a%20package&text=Go%20to%20https%3A%2F%2Fdownload,version%20you%20want%20to%20install

There are several steps above to install the Docker Engine (not desktop), confirmed on Ubuntu Jelly

however this maybe all that is required:

`sudo apt-update`  
`sudo apt install docker.io docker-compose -y`  

To set the current user to be a member of the Docker group:    

<https://docs.docker.com/engine/install/linux-postinstall>  

References:  
<https://docs.docker.com/engine/reference/commandline/docker>  
<https://phoenixnap.com/kb/how-to-list-start-stop-docker-containers>  


**Get a docker image from docker hub eg:**   
<https://hub.docker.com/_/ubuntu>

Pull a specific version (tag) of ubuntu

`docker pull ubuntu:18.04`  

ubuntu:latest will be pulled if tag not specified.  

**pull latest version available of ubuntu** 

latest tag is used by default:  

`docker pull ubuntu`  

**list imaged you have pulled, which will be located here:**  

/var/lib/docker/image/overlay2/imagedb/content/sha256

`docker image ls`  

**now create and run docker containers (ie a running machines) from an image**  

In both cases container will be run detached. If you use **-it** it will connect to a (normally) bash shell unless it exits immediatly  

`docker run -dt --name myubuntucontainer ubuntu`  
`docker run -dt --name myubuntu18container ubuntu:18.04` 

**docker containers will be here:**   
/var/lib/docker/containers 

**list running docker containers**    

`docker ps`  

**stop a running docker container**  
`docker stop myubuntucontainer`  

**stop all docker containers** 

`docker stop $(docker ps -a -q)`  

**remove all docker containers**  

`docker rm $(docker ps -a -q)`  

**list all docker containers both running and stopped**  

`docker ps -a`  

**Connect to a docker container by executing a bash shell on the container**  

`docker exec -it myubuntu18container bash`  

**Exit docker connection**  

`exit`  

**rename an existing container**  

`docker container rename  myubuntu18container2 ubuntu-18.04-c1`  

**now connect to it again**  

`docker exec -it ubuntu-18.04-c1 bash`  


## Building Docker Images  

Create a Dockerfile, then to build:

`docker build -t wrwdi/yocto-hardknott_karo-bsp:next`    

If you want an additional tag just repeat above with the different tag, then can delete tags not required in Docker Hub or locally.  
Alternatively use: 

`docker tag SOURCE_IMAGE[:TAG] TARGET_IMAGE[:TAG]`  

**To push to Docker Hub:**  

Easiest way is to log in via Docker Desktop then you Docker you should just be able to use the following command:  

`docker login -u wrwdi`  

Can also push from Docker Desktop GUI  



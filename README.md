## This is my attempt at SAS Analytics for Containers.

### Now you can launch SAS wit the SAS Studio web interface from a docker image repo

To get the image:
```
$ docker pull docker.sas.com/canbxb/sa4c:latest
```
To run it:
```
$ docker run -d -p 38080:38080 docker.sas.com/canbxb/sa4c:latest
```
Point your browser to (replace docker-hostname with the hostname where the docker image was run):
```
http://<docker-hostname>:38080/SASStudio
```

ToDo: 
* Reduce size of tarball

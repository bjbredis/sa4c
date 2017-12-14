## This is my attempt at SAS Analytics for Containers.

### Now you can launch SAS with the SAS Studio web interface from a docker image repo

To get the image:
```
$ docker pull docker.sas.com/canbxb/sa4c:latest
```
To run it and map the internal port 38080 to the external port 38080:
```
$ docker run -d -p 38080:38080 docker.sas.com/canbxb/sa4c:latest
```
To run it on whatever port is available:
```
$ docker port `docker run -d -P docker.sas.com/canbxb/sa4c:latest`
38080/tcp -> 0.0.0.0:32771   # this is the port it found. 
```
Point your browser to (replace docker-hostname with the hostname where the docker image was run):
```
http://<docker-hostname>:38080/SASStudio
```

ToDo: 
* Reduce size of tarball

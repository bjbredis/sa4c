To get the image:
$ docker pull docker.sas.com/canbxb/sa4c:latest

To run it:
$ docker run -d -p 38080:38080 canbxb/sa4c:latest 


Point your browser to (replace docker-hostname with the hostname where the docker image was run)::
http://<docker-hostname>:38080/SASStudio

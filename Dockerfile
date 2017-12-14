FROM centos
## thanks Donne.Decapite@sas.com
MAINTAINER brad barnes brad.barnes@sas.com
## install necessary libraries
RUN yum -y install numactl-libs.x86_64
RUN yum -y install libXp
RUN yum -y install passwd
RUN yum -y install libpng12
RUN yum -y install libXmu.x86_64
## example adding staff group
RUN useradd -m sas
RUN groupadd -g 1002 sasstaff
#### example adding sas user
RUN usermod -a -G sasstaff sas
## set default password for this example only
## another technique - point to /etc/passwd
RUN echo -e "foobar" | /usr/bin/passwd --stdin sas
## make SASHome directory
RUN mkdir -p /usr/local/sashome
ADD sashome.tar.gz /
RUN chown -R sas:sasstaff /usr/local/sashome
EXPOSE 38080
## An optional startup script can be added (more details below)
ADD startup.sh /
ENTRYPOINT ["/startup.sh"]


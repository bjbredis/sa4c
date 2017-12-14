#!/bin/bash

chown -R 1000 /home/sas

# echo -e ${SAS_PASSWORD} | /usr/bin/passwd --stdin sas
echo -e "foobar" | /usr/bin/passwd --stdin sas

/usr/local/sashome/SASFoundation/9.4/utilities/bin/setuid.sh
/usr/bin/sed -e 's/webdms.showSystemRoot=true/webdms.showSystemRoot=false/g' -i /usr/local/sashome/SASStudioBasic/3.6/war/config/config.properties
/usr/bin/sed -e 's/webdms.allowEGPOpen=false/webdms.allowEGPOpen=true/g' -i /usr/local/sashome/SASStudioBasic/3.6/war/config/config.properties

while [ 1 ] ; do
  /usr/local/sashome/studioconfig/sasstudio.sh start
  tail -f /dev/null
done


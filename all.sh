apt-get install git xsltproc docbook-xsl wget vim libc-ares-dev libc-ares2 uuid-dev openssl libssl-dev gcc g++ make -y



mosquitto -c /etc/mosquitto/mosquitto.conf  #line 35


mosquitto_pub -t topic -m "jdlksf"

 mosquitto_sub -v -t topic

useradd mosquitto

docker exec -it node_1 /bin/sh



connection mytest
address 192.168.0.88:1883
topic room1/# both 2 sensor/ myhouse/

connection mytest2
address 192.168.0.89:1883
topic room1/# both 2 sensor/ myhouse/

bridge_protocol_version mqttv311
notifications true
cleansession true
try_private true
start_type automatic


https://github.com/hui6075/mosquitto-cluster



docker build -t mosquitto .
docker run -i -t -d --name hisangke mosquitto /bin/bash
docker exec -it 775c7c9ee1e1 /bin/bash 

 



FROM ubuntu:18.04
RUN apt-get update
RUN apt-get install -y gnuplot iproute2 libc-ares-dev libc-ares2 uuid-dev openssl libssl-dev gcc g++ make wget vim net-tools iputils-ping openssh-server git xsltproc docbook-xsl wget vim libc-ares-dev libc-ares2 uuid-dev openssl libssl-dev gcc g++ make
RUN wget https://codeload.github.com/hui6075/mosquitto-cluster/zip/master
RUN mv master mosquitto.zip
RUN unzip mosquitto.zip
RUN mv mosquitto-cluster-master mosquitto

FROM ubuntu:18.04
RUN apt-get update
RUN cpan Template
RUN apt-get install -y git erlang xsltproc docbook-xsl unzip iproute2 libc-ares-dev libc-ares2 uuid-dev openssl libssl-dev gcc g++ make wget vim net-tools iputils-ping openssh-server gnuplot iproute2 libc-ares-dev libc-ares2 uuid-dev openssl libssl-dev gcc g++ make wget vim net-tools iputils-ping openssh-server git xsltproc docbook-xsl wget vim libc-ares-dev libc-ares2 uuid-dev openssl libssl-dev gcc g++ make
RUN wget https://codeload.github.com/hui6075/mosquitto-cluster/zip/master
RUN mv master mosquitto.zip
git clone https://github.com/hisangke/post-graduate-experience.git
cd post-graduate-experience && rm all.sh && mv * .. && rm -rf post-graduate-experience





sudo cpan Template

docker network create net12
docker network create net13
docker network create net14
docker network create net15
docker network create net23
docker network create net24
docker network create net25
docker network create net34
docker network create net35
docker network create net45

docker network rm net12 net13 net14 net15 net23 net24 net25 net34 net35 net45

docker network create net01
docker network create net02
docker network create net03
docker network create net04
docker network create net05



docker run -itd -p 1884:1883 --name=node_1 mosquitto
docker run -itd -p 1885:1883 --name=node_2 mosquitto
docker run -itd -p 1886:1883 --name=node_3 mosquitto
docker run -itd -p 1887:1883 --name=node_4 mosquitto
docker run -itd -p 1888:1883 --name=node_5 mosquitto

docker stop node_1 node_2 node_3 node_4 node_5
docker rm node_1 node_2 node_3 node_4 node_5

docker network connect net12 node_1
docker network connect net12 node_2
docker network connect net13 node_1
docker network connect net13 node_3
docker network connect net14 node_1
docker network connect net14 node_4
docker network connect net15 node_1
docker network connect net15 node_5
docker network connect net23 node_2
docker network connect net23 node_3
docker network connect net24 node_2
docker network connect net24 node_4
docker network connect net25 node_2
docker network connect net25 node_5
docker network connect net34 node_3
docker network connect net34 node_4
docker network connect net35 node_3
docker network connect net35 node_5
docker network connect net45 node_4
docker network connect net45 node_5

docker inspect node_5 | grep IPAddress





#!/bin/sh
for i in 1 2 3 4 5
do
echo node_$i
docker inspect node_$i | grep IPAddress
done

vim mynet.sh
#!/bin/sh
for i in 1 2 3 4 5
do
        echo node_name node$i
        echo -n node_address ""
        var=`ping node_$i -c 1 | grep from | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}"`
        echo $var:1883
done

vim config.sh
unzip mosquitto.zip &&
        cd mosquitto-cluster-master &&
        cp ../mynet.sh . &&
        sh mynet.sh >> mosquitto.conf &&echo "WITH_CLUSTER:=yes">>mosquitto.conf
        make &&
        make install &&
        ln -s /usr/local/lib/libmosquitto.so.1 /usr/lib/libmosquitto.so.1 &&
        cp /etc/mosquitto/mosquitto.conf.example /etc/mosquitto/mosquitto.conf &&
        ldconfig &&
        useradd mosquitto && 
		mosquitto -d -c mosquitto.conf && echo "PermitRootLogin yes" >> /etc/ssh/sshd_config &&
		/etc/init.d/ssh restart
		
sh config.sh
		
passwd root
echo "PermitRootLogin yes" >> /etc/ssh/sshd_config
/etc/init.d/ssh restart


ssh-keygen -t rsa
ssh-copy-id root@node_1
ssh root@node_1
scp /root/.ssh/authorized_keys root@node_2:~/.ssh



echo create container
docker run -itd -p 1884:1883 -p 80:80 --name=node_1 mosquitto:new
docker run -itd -p 1885:1883 --name=node_2 mosquitto:new
docker run -itd -p 1886:1883 --name=node_3 mosquitto:new
docker run -itd -p 1887:1883 --name=node_4 mosquitto:new
docker run -itd -p 1888:1883 --name=node_5 mosquitto:new
echo create network
docker network create net12
docker network create net13
docker network create net14
docker network create net15
docker network create net23
docker network create net24
docker network create net25
docker network create net34
docker network create net35
docker network create net45
echo connect network
docker network connect net12 node_1
docker network connect net12 node_2
docker network connect net13 node_1
docker network connect net13 node_3
docker network connect net14 node_1
docker network connect net14 node_4
docker network connect net15 node_1
docker network connect net15 node_5
docker network connect net23 node_2
docker network connect net23 node_3
docker network connect net24 node_2
docker network connect net24 node_4
docker network connect net25 node_2
docker network connect net25 node_5
docker network connect net34 node_3
docker network connect net34 node_4
docker network connect net35 node_3
docker network connect net35 node_5
docker network connect net45 node_4
docker network connect net45 node_5





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

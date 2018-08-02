echo create container
docker run -itd -p 1884:1883 -p 80:80 --name=node_1 mosquitto
docker run -itd -p 1885:1883 --name=node_2 mosquitto
docker run -itd -p 1886:1883 --name=node_3 mosquitto
docker run -itd -p 1887:1883 --name=node_4 mosquitto
docker run -itd -p 1888:1883 --name=node_5 mosquitto
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

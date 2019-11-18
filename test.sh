#!/bin/bash

if [ $(docker container ls -q --filter name=my)!= ''];then
docker container stop mydb 
docker container rm mydb 
fi 

if [$(docker image ls -q --filter reference=mydb_img) != '' ];then 
docker image rm mydb_img
fi 

docker image build -t mydb_img . 

docker container run -itd -p 9099:3306 name mydb mydb_img 
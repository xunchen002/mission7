#!/bin/bash
echo "current version is : "
docker images | grep qwertyui0011/base-notebook | tail -1 | tr -s " " | cut -d " " -f 2
read -p "enter the update version : " version
docker build . -t qwertyui0011/base-notebook:$version

 #登入後將image推上docker hub
docker login
docker push qwertyui0011/base-notebook

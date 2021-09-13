#!/bin/bash
#Undeploy the Helloworld App and Stop
echo "Removing Hello World App"
docker stop hello_world
echo "Stoping Hello World App"
docker ps -a
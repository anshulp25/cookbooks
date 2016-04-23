# docker

Cookbook for install docker on CentOS 7.


## Test the Installation

```
#This will the install and run container Advisor container
docker pull google/cadvisor
docker run --publish=8080:8080 --detach=true --name=cadvisor google/cadvisor:latest

```

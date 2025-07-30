#!/bin/bash

docker run --name jenkins --rm -d -p 8080:8080 jenkins/jenkins:lts-jdk17
docker run --name httpd --rm -d -p 8081:80 httpd:2.4
docker exec jenkins cat /var/jenkins_home/secrets/initialAdminPassword
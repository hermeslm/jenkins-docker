#!/usr/bin/env bash

JENKINS_VER="latest"

jenkinsDocker=`docker images | grep 'onedsol/jenkins-docker' | awk '{print $3}'`
jenkins=`docker images | grep 'jenkins/jenkins' | awk '{print $3}'`

echo "Removing old image: $jenkinsDocker"
docker rmi ${jenkinsDocker} &>/dev/null

echo "Removing old image: jenkins"
docker rmi ${jenkins} &>/dev/null

./build-jenkins.sh latest

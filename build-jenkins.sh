#!/usr/bin/env bash

usage() {
    echo "********************************"
    echo "Usage: $0 options"
    echo "OPTIONS:"
    echo "   1-param      Jenkins version."
    echo "********************************"
}

usage

if [ "$#" -ne 1 ]; then
  echo "Usage: $0 JenkinsVersion" >&2
  exit 1
fi

#set -x
docker build --rm=true --no-cache=true  --force-rm=true -t onedsol/jenkins-docker:$1 .
cat ./password.txt | docker login --username onedsol --password-stdin
docker push onedsol/jenkins-docker:$1
#set +x

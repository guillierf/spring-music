#!/bin/bash

now=$(date +"%s")

#docker login 10.40.206.145 -u admin -p 'VMware1!'
docker build -t 10.40.206.145/library/spring-music:"$now" .
docker push 10.40.206.145/library/spring-music:"$now"

kubectl set image deployments/spring-music spring-music="10.40.206.145/library/spring-music:$now" --record


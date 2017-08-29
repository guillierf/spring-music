#!/bin/bash

now=$(date +"%s")

docker build -t mxplusb/spring-music:"$now" .
docker push mxplusb/spring-music:"$now"

kubectl set image deployments/spring-music spring-music="mxplusb/spring-music:$now" --record


#!/usr/bin/env bash

git pull

cp templates/blue-app.css src/main/resources/static/css/app.css
git add src/main/resources/static/css/app.css
git commit -m 'making banner blue'
git push -u origin master
sleep 3
watch -n1 kubectl get all -o wide

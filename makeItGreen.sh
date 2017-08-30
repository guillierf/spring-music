#!/usr/bin/env bash

git pull

cp templates/green-app.css src/main/resources/static/css/app.css
git add src/main/resources/static/css/app.css
git commit -m 'making banner green'
git push -u origin master
sleep 3
echo " ****************************"
echo " press any button to continue"
echo " ****************************"
read
watch -n1 kubectl get all -o wide

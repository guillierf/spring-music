#!/usr/bin/env bash

git pull

cp templates/blue-app.css src/main/resources/static/css/app.css
git add src/main/resources/static/css/app.css
git add makeItBlue.sh
git commit -m 'making banner blue'
git push -u origin master
sleep 3
echo " ****************************"
echo " press any button to continue"
echo " ****************************"
read
watch -n1 kubectl get all -o wide

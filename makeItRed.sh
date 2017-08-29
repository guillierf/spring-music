#!/usr/bin/env bash

cp templates/red-app.css src/main/resources/static/css/app.css
git add src/main/resources/static/css/app.css
git commit -m 'making banner red'
git push -u origin master
watch kubectl get pods -o wide

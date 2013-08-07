#!/bin/bash
git config credential.helper 'cache --timeout=3600'
git branch
git config --global user.name "kenneth a hansen"
git config --global user.email "kenneth.a.hansen@gmail.com"
git commit -a -m "Updated index.html"
git push origin develop
git checkout staging
git merge develop
git push origin staging
git push staging-heroku staging:master
git checkout master
git merge staging
git push production-heroku master:master
git branch
git checkout develop

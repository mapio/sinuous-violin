#!/bin/bash

git checkout master
jupyter nbconvert --execute --to html sinuous-violin.ipynb
git checkout gh-pages
mv -f sinuous-violin.html index.html
git commit --amend -m'Initial commit' index.html
git push -f origin gh-pages
git checkout master
git push origin master

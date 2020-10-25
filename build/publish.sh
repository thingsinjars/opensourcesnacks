#!/bin/bash

git checkout gh-pages

rm -rf *

git checkout master -- site/build

mv -f site/build/* .

git add .

git commit -m"Updating from master"

git checkout master
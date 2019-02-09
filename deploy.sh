#!/bin/bash

git clone https://github.com/65031141/65031141.github.io.git
cd 65031141.github.io
git checkout gh-pages
cd ..

while [ 0 ]
do
  cd 65031141.github.io
  git pull
  cd ..

  mkdir -p html
  rm -rf html/*

  cp -r 65031141.github.io/* html/

  rm -rf html/.git
  rm -rf html/.circleci
  rm -rf html/.gitignore
  
  chmod -R 755 html

  echo "updated at $(date)"

  sleep 1
done

#!/bin/bash

# get into working dir of gear
cd /root/

mkdir -p html

# clear repo dir if exists
rm -rf 65031141.github.io

# clone site
git clone https://github.com/65031141/65031141.github.io.git
cd 65031141.github.io
git checkout gh-pages
cd ..


# loop
while [ 0 ]
do
  # pull 
  cd 65031141.github.io
  git pull
  cd ..

  # clear old files
  rm -rf html/*

  # copy new files into html/
  cp -r 65031141.github.io/* html/

  # clear git related files
  rm -rf html/.git
  rm -rf html/.circleci
  rm -rf html/.gitignore
  
  # fix permission
  chmod -R 755 html

  # mark done.
  echo "updated at $(date)"

  # wait for 1 second
  sleep 30
done

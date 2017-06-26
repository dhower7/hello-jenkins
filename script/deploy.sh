#!/bin/sh
 
ssh webserver@10.3.70.178 <<EOF
  cd ~/hello-jenkins
  git pull
  npm install --production
  forever restartall
  exit
EOF
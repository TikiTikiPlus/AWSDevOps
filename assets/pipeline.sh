#!/bin/bash

echo "(0) Prepare environment"
echo "(1) Build (compiling the application)"
  npm install
  if npm run build;
  then
    echo "build succeeded"
    git pull
    git add .
    if [ $# -eq 0 ]
    then
      git commit -m "COMPX341-22A-A3 Committing from CI/CD Pipeline"
      echo "COMPX341-22A-A3 Committing from CI/CD Pipeline"
    else
     git commit -m "$1"
     echo "$1"
    fi
    git push -u git@github.com:TikiTikiPlus/AWSDevOps.git
    npm run start
  else
    echo "build failed"
    exit
  fi
echo "(2) Tests"

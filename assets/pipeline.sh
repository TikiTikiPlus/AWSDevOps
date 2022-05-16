#!/bin/bash

echo "(0) Prepare environment"

echo "(1) Build (compiling the application)"
  if npm run build;
  then
    git pull
    git add .
    if [ "$1" -eq 0 ]
    then
      git commit -m "COMPX341-22A-A3 Committing from CI/CD Pipeline"
    else
      echo "$1"
      git commit -m "$1"
    fi
    git push git@github.com:TikiTikiPlus/AWSDevOps.git
    echo "build succeeded"
  else
    echo "build failed"

  fi
echo "(2) Tests"
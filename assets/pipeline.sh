#!/bin/bash

echo "(0) Prepare environment"

echo "(1) Build (compiling the application)"
  if npm run build; then
    git add .
    git commit -m "Successful commit"
    git push
    echo "build succeeded"
  else
    echo "build failed"
  fi
echo "(2) Tests"
#!/bin/bash

REPOSITORIES=$(cat modules)

for REPOSITORY in $REPOSITORIES
do
  git submodule add https://github.com/nubomedia/$REPOSITORY
  git add .
  git ci -m "Added submodule $REPOSITORY"
done

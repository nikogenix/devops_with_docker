#!/bin/sh

GITHUB_REPO="https://github.com/$1"
DOCKER_REPO="$2"

rm -rf testing
git clone "$GITHUB_REPO" testing
cd testing

docker build -t "$DOCKER_REPO" .
docker push "$DOCKER_REPO"
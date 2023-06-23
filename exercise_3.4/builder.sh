#!/bin/sh

GITHUB_REPO="https://github.com/$1"
DOCKER_REPO="$2"

DOCKER_USER="$DOCKER_USER"
DOCKER_PWD="$DOCKER_PWD"

rm -rf testing
git clone "$GITHUB_REPO" testing
cd testing

docker login -u "$DOCKER_USER" -p "$DOCKER_PWD"
docker build -t "$DOCKER_REPO" .
docker push "$DOCKER_REPO"
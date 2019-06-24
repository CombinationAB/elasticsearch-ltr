#!/bin/sh

ELASTICSEARCH_VERSION=6.7.1
IMAGE_NAME=combination/elasticsearch-ltr

docker build . --build-arg ELASTICSEARCH_VERSION=$ELASTICSEARCH_VERSION -t $IMAGE_NAME -t $IMAGE_NAME:$ELASTICSEARCH_VERSION

if [ "$1" == "publish" ]; then
  docker push $IMAGE_NAME:latest
  docker push $IMAGE_NAME:$ELASTICSEARCH_VERSION
fi
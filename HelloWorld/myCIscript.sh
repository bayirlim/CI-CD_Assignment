#!/bin/bash
DOCKERFILE=Dockerfile
TAG="helloworld"
USERNAME="merveba"
NAME="hello-world"
YAML="hello-application.yaml"

docker build -t $USERNAME/$TAG .
docker push $USERNAME/$TAG
kubectl apply -f $YAML
# kubectl create deployment hello-node --image=k8s.gcr.io/echoserver:1.4 ------- is already in YAML
# kubectl expose deployment $NAME --type=LoadBalancer --port=8080

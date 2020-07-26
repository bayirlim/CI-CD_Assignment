#!/bin/bash
# clean up kubernetes
# https://stackoverflow.com/questions/33509194/command-to-delete-all-pods-in-all-kubernetes-namespaces
kubectl delete daemonsets,replicasets,services,deployments,pods,rc --all

# clean up local docker
docker stop $(docker ps -a -q) # stop all containers
# docker rm $(docker ps -a -q) # delete all containers
# docker rmi $(docker images -q) # delete all images
docker system prune -f

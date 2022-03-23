#!/bin/bash

minikube docker-env

eval $(minikube -p minikube docker-env) 

## Enabling ingress for minikube"

minikube addons enable ingress

## Building the docker image locally"

docker build -t ecosia:latest .

kubectl apply -f kubernetes_manifests/

sleep 60

kubectl get ingress 
#Please wait for few minutes to assign ip to the ingress
## Adding local.ecosia.org DNS Name  /etc/hosts "

echo "`minikube ip`  local.ecosia.org" | sudo tee -a /etc/hosts

curl http://local.ecosia.org/tree
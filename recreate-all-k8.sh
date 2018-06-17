#!/bin/bash

kubectl delete deployment payment-service group-service member-service
kubectl delete service payment-service group-service member-service

kubectl create -f ./payment-configs/deployment.yaml 
kubectl create -f ./group-configs/deployment.yaml
kubectl create -f ./member-configs/deployment.yaml

kubectl create -f ./group-configs/service.yaml
kubectl create -f ./member-configs/service.yaml
kubectl create -f ./payment-configs/service.yaml

kubectl apply -f gateway.yaml

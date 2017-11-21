#!/bin/bash

kubectl config set-context $(kubectl config current-context) --namespace=wso2

kubectl create -f nfs-server-gce-pv.yaml
sleep 3
kubectl create -f nfs-server-rc.yaml 
sleep 3
kubectl create -f nfs-server-service.yaml

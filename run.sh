#!/bin/bash
kubectl apply -f ./configure/minikube-storageclass-broker.yml
kubectl apply -f ./configure/minikube-storageclass-zookeeper.yml
kubectl apply -f ./00-namespace.yml
kubectl apply -f ./rbac-namespace-default/
kubectl apply -f ./zookeeper/
kubectl apply -f ./kafka/
kubectl apply -f ./yahoo-kafka-manager/

kubectl apply -f ./localhost-services/
echo $(minikube ip)

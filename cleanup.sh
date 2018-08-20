#!/bin/bash
kubectl delete -f ./configure/minikube-storageclass-broker.yml
kubectl delete -f ./configure/minikube-storageclass-zookeeper.yml
kubectl delete -f ./00-namespace.yml
kubectl delete -f ./rbac-namespace-default/
kubectl delete -f ./zookeeper/
kubectl delete -f ./kafka/
kubectl delete -f ./yahoo-kafka-manager/

kubectl delete -f ./localhost-services/

#!/bin/bash
NAME=${1}
KIND=${2} 
# usage: restart_pods.sh name deployment 
# usage: restart_pods.sh name statefulset 

DESIRED=$(kubectl get ${KIND} ${NAME} -o=jsonpath='{.spec.replicas}')

kubectl scale ${KIND} ${NAME} --replicas=0
kubectl scale ${KIND} ${NAME} --replicas=${DESIRED}

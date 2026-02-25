#!/bin/bash

echo "Checking Kubernetes cluster status..."

kubectl get nodes
kubectl get pods --all-namespaces

echo "Cluster health check completed."

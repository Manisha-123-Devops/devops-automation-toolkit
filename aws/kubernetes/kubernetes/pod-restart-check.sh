#!/bin/bash

echo "Checking for frequently restarting pods..."

kubectl get pods --all-namespaces --field-selector=status.phase!=Running

echo "Pod restart check completed."

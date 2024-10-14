#!/bin/bash
# Deploy the application to Kubernetes
echo "Deploying to Kubernetes..."
kubectl apply -f Kubernetes/deployment.yaml

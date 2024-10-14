#!/bin/bash

# Ensure kubectl is installed
if ! command -v kubectl &> /dev/null
then
    echo "kubectl not found, installing..."
    curl -LO "https://amazon-eks.s3.us-east-2.amazonaws.com/1.21.1/2022-07-25/bin/linux/amd64/kubectl" # Adjust the version as needed
    chmod +x ./kubectl
    sudo mv ./kubectl /usr/local/bin/kubectl
fi

# Apply the Kubernetes manifests
echo "Deploying to Kubernetes..."
kubectl apply -f Kubernetes/deployment.yml

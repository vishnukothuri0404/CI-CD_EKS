#!/bin/bash
# Add commands to stop the application, if necessary
kubectl scale deployment nginx-deployment --replicas=0

#!/bin/bash
# Add commands to stop the application, if necessary
kubectl scale deployment movieapp --replicas=0

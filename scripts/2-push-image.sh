#!/bin/bash

# rename local image to deploy to ECR
docker tag hello-python:latest 397329935272.dkr.ecr.us-east-1.amazonaws.com/hello-python:latest

# authorize to ECR
aws ecr get-login-password --region us-east-1 \
| docker login --username AWS --password-stdin 397329935272.dkr.ecr.us-east-1.amazonaws.com

# push container image to ECR
docker push 397329935272.dkr.ecr.us-east-1.amazonaws.com/hello-python:latest


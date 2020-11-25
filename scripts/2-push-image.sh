#!/bin/bash

# rename local image to deploy to ECR
docker tag hello-countries:latest 397329935272.dkr.ecr.sa-east-1.amazonaws.com/hello-countries:latest

# authorize to ECR
aws ecr get-login-password --region sa-east-1 \
| docker login --username AWS --password-stdin 397329935272.dkr.ecr.sa-east-1.amazonaws.com

# push container image to ECR
docker push 397329935272.dkr.ecr.sa-east-1.amazonaws.com/hello-countries:latest


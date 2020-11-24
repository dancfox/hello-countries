#!/bin/bash

# login to ECR to get base image
aws ecr get-login-password --region sa-east-1 \
    | docker login \
    --username AWS \
    --password-stdin 628053151772.dkr.ecr.sa-east-1.amazonaws.com

# build my container
docker build . -f Dockerfile -t hello-countries:latest 


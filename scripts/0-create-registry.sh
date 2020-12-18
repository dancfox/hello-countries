#!/bin/bash

aws ecr create-repository \
 --repository-name hello-python \
 --image-scanning-configuration scanOnPush=true \
 --region us-east-1
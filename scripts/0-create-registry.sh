#!/bin/bash

aws ecr create-repository \
 --repository-name hello-countries \
 --image-scanning-configuration scanOnPush=true \
 --region sa-east-1
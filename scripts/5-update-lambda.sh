#!/bin/bash

# update lambda function 
aws lambda --region sa-east-1 update-function-code \
--function-name hello-countries \
--image-uri 397329935272.dkr.ecr.sa-east-1.amazonaws.com/hello-countries:latest 
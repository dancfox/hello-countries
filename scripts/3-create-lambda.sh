#!/bin/bash

# create lambda function
aws lambda --region us-east-1 create-function \
--function-name hello-python \
--package-type Image \
--role arn:aws:iam::397329935272:role/supernova-execution-role \
--code ImageUri=397329935272.dkr.ecr.us-east-1.amazonaws.com/hello-python:latest 
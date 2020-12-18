#!/bin/bash

# invoking my lambda!
aws lambda --region us-east-1 invoke \
--function-name hello-python \
--invocation-type Event \
--payload '{ "foo": "bar" }' \
outfile.txt
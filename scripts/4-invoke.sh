#!/bin/bash

# invoking my lambda!
aws lambda --region sa-east-1 invoke \
--function-name hello-countries \
--invocation-type Event \
--payload '{ "foo": "bar" }' \
outfile.txt
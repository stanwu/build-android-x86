#!/bin/bash

#Disable interactive
export DEBIAN_FRONTEND=noninteractive

echo "$GCLOUD_AUTH" > key-file.json
gcloud auth activate-service-account --key-file=key-file.json

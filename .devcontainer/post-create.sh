#!/bin/bash

#Disable interactive
export DEBIAN_FRONTEND=noninteractive

#Install gcloud cli
sudo apt-get install -y apt-transport-https ca-certificates gnupg
curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -
echo "deb https://packages.cloud.google.com/apt cloud-sdk main" | sudo tee -a /etc/apt/sources.list.d/google-cloud-sdk.list
sudo apt-get update
sudo apt-get -y install google-cloud-sdk

echo "$GCLOUD_AUTH" > key-file.json
gcloud auth activate-service-account --key-file=key-file.json

#!/bin/bash

if [ -f /usr/bin/gcloud ]; then
    echo "gcloud command had exist, you don't need install it again"
    exit 0
fi

#Install gcloud cli
sudo apt-get install -y apt-transport-https ca-certificates gnupg
curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -
echo "deb https://packages.cloud.google.com/apt cloud-sdk main" | sudo tee -a /etc/apt/sources.list.d/google-cloud-sdk.list
sudo apt-get update
sudo apt-get -y install google-cloud-sdk

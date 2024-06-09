#!/bin/sh

if [ -z "$1" ]; then
    echo "Usage: $0 [vm-id-name]"
    exit 1
fi

gcloud compute instances create $1 \
		--image-family=ubuntu-2004-lts \
		--image-project=ubuntu-os-cloud \
        --provisioning-model=SPOT \
		--preemptible \
		--zone=asia-east1-b \
        --boot-disk-type=pd-standard \
		--boot-disk-size=300GB \
        --machine-type=n2d-standard-2

gcloud compute instances list


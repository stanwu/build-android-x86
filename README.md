# build-aosp-yrieq1

Based on Ubuntu 20.04.6 LTS

## Build environment required 

- i5 above CPU
- 16GB above RAM
- 300GB SSD or HDD
- High speed internet access
- Do not try build AOSP on your free GitHub Codespaces account

## How to Build the AOSP Quickly

Create a build environment
```
mkdir android-x86
cd android-x86
[path]/install_build_env.sh 
```

## Build AOSP on GCP (optional)

### If you need build AOSP on GCP, you can install gcloud command

```
./install_gcloud_cli.sh
gcloud projects list
gcloud config set project [you_project_id]
```

### Create a 300GB HDD instance on GCP to download AOSP repo

```
./create-gcp-instance.sh [your_instance]
```

### You can scp install build tools script into your instance, and run it to download AOSP repo

```
gcloud compute scp ./install_build_env.sh [your_login_id]@[your_instance]:~/
gcloud compute ssh [your_login_id]@[your_instance]
```

### <font color=#AA0000>WARNING:</font> Please watch your GCP billing

> If you use `create-gcp-ubuntu-2004-lts.sh` to create an instance, please monitor your GCP regularly or delete the instance when you don't need it anymore.

## Android 11.0.0 r1

#!/bin/bash

apt update && apt -y install curl unzip 

# Install awscli
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
./aws/install

# Install eksctl
mkdir -p eksctl_download
wget https://github.com/weaveworks/eksctl/releases/latest/download/eksctl_Linux_amd64.tar.gz
tar xfz eksctl_Linux_amd64.tar.gz
chmod +x eksctl
mv eksctl /usr/local/bin/


# Install kubectl
curl -LO https://storage.googleapis.com/kubernetes-release/release/$KUBECTL_VERSION/bin/$PLATFORM/amd64/kubectl
chmod +x ./kubectl
mv ./kubectl /usr/local/bin

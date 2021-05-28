#!/bin/bash

apt update && apt -y install curl unzip 

# Install awscli
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
./aws/install

# Install eksctl
mkdir -p eksctl_download
curl --silent --location --retry 5 "https://github.com/weaveworks/eksctl/releases/download/latest_release/eksctl_$(uname -s)_amd64.tar.gz"
tar xz -C eksctl_download
chmod +x eksctl_download/eksctl
mv eksctl_download/eksctl /usr/local/bin/


# Install kubectl
curl -LO https://storage.googleapis.com/kubernetes-release/release/$KUBECTL_VERSION/bin/$PLATFORM/amd64/kubectl
chmod +x ./kubectl
mv ./kubectl /usr/local/bin

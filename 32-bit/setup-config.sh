#!/bin/bash

# This script setups up the Docker image and installed needed software.
# This script assumes its being run by root.

apt-get update
apt-get install -y curl wget nano wget snapd trickle

#Install Node and NPM
#curl -sL https://deb.nodesource.com/setup_16.x -o nodesource_setup.sh
#bash nodesource_setup.sh
#rm nodesource_setup.sh
#apt-get install -y nodejs build-essential

# Install IPFS
wget https://dist.ipfs.io/go-ipfs/v0.14.0/go-ipfs_v0.14.0_linux-386.tar.gz
tar -xvf go-ipfs_v0.14.0_linux-386.tar.gz
rm go-ipfs_v0.14.0_linux-386.tar.gz
/root/go-ipfs/install.sh

#!/bin/bash

# This bash script file starts IPFS with arguments passed from the
# docker compose file.

# Init if it hasn't been initialized yet.
ipfs init --profile=server

# Turn on websockets
ipfs config --json Addresses.Swarm '["/ip4/0.0.0.0/tcp/4001","/ip6/::/tcp/4001","/ip4/0.0.0.0/udp/4001/quic","/ip6/::/udp/4001/quic","/ip4/0.0.0.0/tcp/4003","/ip6/::/tcp/4003"]'

# Open the API and Gateway ports
ipfs config Addresses.API /ip4/0.0.0.0/tcp/5001
ipfs config Addresses.Gateway /ip4/0.0.0.0/tcp/8080

trickle -s -u $UPLOAD_KBPS -d $DOWNLOAD_KBPS ipfs daemon $IPFS_DAEMON_ARGUMENTS

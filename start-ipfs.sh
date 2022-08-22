#!/bin/bash

# This bash script file starts IPFS with arguments passed from the
# docker compose file.

ipfs init --profile=server
trickle -s -u $UPLOAD_KBPS -d $DOWNLOAD_KBPS ipfs daemon $IPFS_DAEMON_ARGUMENTS

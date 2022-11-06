FROM ubuntu:22.04
#FROM jrei/systemd-ubuntu:22.04
MAINTAINER Chris Troutner <chris.troutner@gmail.com>

# Work from the /root directory
WORKDIR /root

# Setup the container with required software.
COPY setup-config.sh setup-config.sh
RUN bash setup-config.sh

#COPY start-ipfs.sh start-ipfs.sh
CMD ["./start-ipfs.sh"]

# Launch a dummy app to keep the process alive so that I can debug issues.
# This command is overwritten by the docker-compose file.
#COPY dummyapp.js dummyapp.js
#CMD ["node", "dummyapp.js"]

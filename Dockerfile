FROM ubuntu:latest

RUN apt-get update && apt-get install -y --no-install-recommends \
        apt-utils \
        build-essential \
        ca-certificates \
        curl \
        kmod
# User
# TODO: Make this work with Bitfusion GA version
RUN cd /tmp && \
      curl -fSslL -O https://packages.vmware.com/bitfusion/ubuntu/22.04/bitfusion-client-ubuntu2204_4.5.4-6_amd64.deb && \
      apt install -y ./bitfusion-client-ubuntu2204_4.5.4-6_amd64.deb && \
      rm -rf /tmp/*

RUN usermod -aG bitfusion root &&\
    chmod -R 751 /etc/bitfusion/

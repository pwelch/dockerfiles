FROM debian:jessie

MAINTAINER pwelch "git@pwelch.net"

# Set Yara Version
ARG yara_version='3.5.0'

# Update apt-get and install packages
RUN apt-get update \
  && apt-get install wget git automake libtool make gcc libssl-dev libjansson-dev libmagic-dev \
  python python-setuptools python-dev --yes

# Fetch and Build Yara
RUN cd /tmp && \
  wget https://github.com/VirusTotal/yara/archive/v${yara_version}.tar.gz && \
  tar -zxf v${yara_version}.tar.gz && \
  cd yara-${yara_version} && \
  ./bootstrap.sh && \
  ./configure --enable-cuckoo --enable-magic && \
  make && \
  make install

# Fetch and Build yara-python
RUN cd /tmp && \
  git clone --recursive https://github.com/VirusTotal/yara-python && \
  cd yara-python && \
  python setup.py build && \
  python setup.py install

# Clean up image
RUN rm -rf /tmp/* \
  && apt-get remove --yes gcc git \
  && apt-get autoremove --yes \
  && apt-get clean all \
  # && rm -rf /var/lib/apt/lists/*

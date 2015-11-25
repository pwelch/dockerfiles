FROM ubuntu:14.04

MAINTAINER pwelch "git@pwelch.net"

# Update apt-get and install packages
RUN apt-get update \
  && apt-get install wget build-essential --yes

# Compile Nmap
RUN cd /tmp \
  && wget https://nmap.org/dist/nmap-7.00.tar.bz2 \
  && bzip2 -d nmap-7.00.tar.bz2 \
  && tar xvf nmap-7.00.tar \
  && cd nmap-7.00 \
  && ./configure \
  && make \
  && make install

# Clean up image
RUN rm -rf /tmp/* \
  && apt-get remove --yes build-essential wget \
  && apt-get autoremove --yes \
  && apt-get clean all \
  && rm -rf /var/lib/apt/lists/*

FROM ubuntu:16.04

MAINTAINER pwelch "git@pwelch.net"

# https://github.com/PowerShell/PowerShell

# Set Powershell Version
ARG powershell_version='6.0.0-alpha'

# Update apt-get and install required packages
RUN apt-get update && \
  apt-get install git wget libunwind8 libicu55 --yes

# Fetch and Install Powershell
RUN cd /tmp && \
  wget https://github.com/PowerShell/PowerShell/releases/download/v${powershell_version}.9/powershell_${powershell_version}.9-1ubuntu1.16.04.1_amd64.deb && \
  dpkg -i powershell_${powershell_version}.9-1ubuntu1.16.04.1_amd64.deb

# Clean up image
RUN rm -rf /tmp/* \
  && apt-get autoremove --yes \
  && apt-get clean all
  # && rm -rf /var/lib/apt/lists/*

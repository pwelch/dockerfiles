FROM ubuntu:14.04

MAINTAINER pwelch "git@pwelch.net"

# Set ChefDK Version
ARG chefdk_version=2.1.11

# Update apt-get and install packages
RUN apt-get update \
  && apt-get install curl git --yes

# Install ChefDK
RUN curl -L https://www.opscode.com/chef/install.sh | bash -s -- -P chefdk -v $chefdk_version
RUN locale-gen en_US.UTF-8

# Allow the container to clone from github and gitlab
RUN  mkdir -p ~/.ssh && \
  ssh-keyscan github.com >> ~/.ssh/known_hosts && \
  ssh-keyscan gitlab.com >> ~/.ssh/known_hosts

# Clean up image
RUN rm -rf /tmp/* \
  && apt-get remove --yes curl \
  && apt-get autoremove --yes \
  && apt-get clean all
  # && rm -rf /var/lib/apt/lists/*

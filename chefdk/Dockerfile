FROM ubuntu:14.04

MAINTAINER pwelch "git@pwelch.net"

# Update apt-get and install packages
RUN apt-get update \
  && apt-get install curl --yes

# Install ChefDK
RUN curl -L https://www.opscode.com/chef/install.sh | bash -s -- -P chefdk
RUN locale-gen en_US.UTF-8

# Clean up image
RUN rm -rf /tmp/* \
  && apt-get clean all \
  && rm -rf /var/lib/apt/lists/* \

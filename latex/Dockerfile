FROM ubuntu:14.04

MAINTAINER pwelch "git@pwelch.net"

# Update apt-get and install packages
RUN apt-get update \
  && apt-get install texlive --yes

# Clean up image
RUN rm -rf /tmp/* \
  && rm -rf /var/lib/apt/lists/* \
  && apt-get autoremove --yes \
  && apt-get clean all

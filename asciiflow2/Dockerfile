FROM ubuntu:14.04

MAINTAINER pwelch "git@pwelch.net"

# Update apt-get and install required packages
RUN apt-get update \
  && apt-get install openjdk-7-jre python git --yes

# Install from source code and compile
RUN cd /srv \
  && git clone https://github.com/lewish/asciiflow2.git \
  && cd /srv/asciiflow2 \
  && /srv/asciiflow2/compile.sh

# Add user to run application as instead of root
RUN useradd app \
  && cd /srv \
  && chown -R app:app /srv/asciiflow2

# Clean up image
RUN rm -rf /tmp/* \
  && apt-get remove --yes openjdk-7-jre git \
  && rm -rf /var/lib/apt/lists/* \
  && apt-get autoremove --yes \
  && apt-get clean all

USER app

WORKDIR /srv/asciiflow2

EXPOSE 8080

CMD ["python", "-m","SimpleHTTPServer", "8080"]

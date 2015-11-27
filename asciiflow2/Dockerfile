FROM ubuntu:14.04

MAINTAINER pwelch "git@pwelch.net"

RUN apt-get update \
  && apt-get install openjdk-7-jre python git --yes

RUN  cd /srv \
  && git clone https://github.com/lewish/asciiflow2.git \
  && cd /srv/asciiflow2 \
  && /srv/asciiflow2/compile.sh

# Clean up image
RUN rm -rf /tmp/* \
  && apt-get remove --yes openjdk-7-jre git \
  && rm -rf /var/lib/apt/lists/* \
  && apt-get autoremove --yes \
  && apt-get clean all

WORKDIR /srv/asciiflow2

EXPOSE 80

CMD ["python", "-m","SimpleHTTPServer", "80"]

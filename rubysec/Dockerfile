FROM ruby:2.3

ENV DEBIAN_FRONTEND noninteractive
ENV DEBCONF_NONINTERACTIVE_SEEN true

RUN apt-get update --yes && \
    apt-get upgrade --yes && \
    apt-get install --yes vim

RUN gem install bundler brakeman bundler-audit --no-ri --no-rdoc

RUN rm -rf /var/lib/apt/lists/*

WORKDIR /app

CMD ["/bin/bash"]

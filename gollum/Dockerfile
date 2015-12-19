FROM ruby

MAINTAINER pwelch "git@pwelch.net"

RUN apt-get update \
  && apt-get install libicu-dev --yes

# https://github.com/gollum/gollum
RUN gem install gollum redcarpet org-ruby --no-rdoc --no-ri

# Clean up image
RUN rm -rf /tmp/* \
  && rm -rf /var/lib/apt/lists/* \
  && apt-get autoremove --yes \
  && apt-get clean all

VOLUME /wiki

WORKDIR /wiki

CMD ["gollum", "--port", "80"]

EXPOSE 80

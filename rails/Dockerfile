FROM ruby:2.3

ENV DEBIAN_FRONTEND noninteractive
ENV DEBCONF_NONINTERACTIVE_SEEN true

RUN apt-get update --yes && \
    apt-get upgrade --yes && \
    apt-get install --yes sudo vim less net-tools libpq-dev nodejs imagemagick

RUN rm -rf /var/lib/apt/lists/*

RUN gem install bundler --no-ri --no-rdoc

WORKDIR /app
ADD Gemfile /app/Gemfile
ADD Gemfile.lock /app/Gemfile.lock
RUN bundle install
ADD . /app

ENV RAILS_ENV development

EXPOSE 9292
CMD ["bundle", "exec", "rackup"]

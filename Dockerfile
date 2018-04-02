FROM ruby:alpine

RUN apk add --update build-base postgresql-dev tzdata
RUN gem install rails -v '5.1.6'

WORKDIR /app
ADD Gemfile Gemfile.lock /app/
RUN bundle install

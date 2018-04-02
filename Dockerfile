FROM ruby:alpine

RUN apk add --update build-base postgresql-dev
RUN gem install rails -v '5.1.6'

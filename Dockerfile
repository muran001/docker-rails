FROM ruby:2.4.1
ENV LANG C.UTF-8

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs

ADD gemrc /etc/gemrc
RUN chmod uog+r /etc/gemrc
RUN gem install bundler
RUN gem install rails --version="~> 5.1.0"

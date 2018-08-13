FROM ruby:2.5
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /shoutr-rails
WORKDIR /shoutr-rails
COPY Gemfile /shoutr-rails/Gemfile
COPY Gemfile.lock /shoutr-rails/Gemfile.lock
RUN bundle install
COPY . /shoutr-rails

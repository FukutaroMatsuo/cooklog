FROM ruby:2.5
RUN apt-get update
RUN apt-get install -y \ 
  build-essential \
  libpq-dev \
  nodejs \
  postgresql-client \
  yarn \
  vim

WORKDIR /cooklog
COPY Gemfile Gemfile.lock /cooklog/
RUN bundle install

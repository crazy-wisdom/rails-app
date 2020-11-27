FROM ruby:latest

COPY sources.list /etc/apt/sources.list
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list

RUN curl -sL https://deb.nodesource.com/setup_current.x | bash -
RUN apt-get update -qq && apt-get install -y build-essential nodejs yarn postgresql-client

RUN mkdir -p /var/www
WORKDIR /var/www

EXPOSE 4500

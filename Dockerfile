FROM ruby:3-buster

ARG uid
ARG app_path
ARG username=desafio-dev
ENV BUNDLE_PATH=$app_path/.gems BUNDLE_JOBS=3

RUN curl https://deb.nodesource.com/setup_12.x | bash
RUN curl https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list

RUN apt-get update && apt-get install -y libpq-dev build-essential nodejs yarn && \
    useradd -u $uid --home-dir $app_path $username
RUN gem install bundler:2.2.25

ADD . $app_path

USER $username

WORKDIR $app_path

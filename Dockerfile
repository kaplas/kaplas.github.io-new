FROM ruby:2.2

# throw errors if Gemfile has been modified since Gemfile.lock
RUN bundle config --global frozen 1

RUN mkdir -p /usr/src/gemfile
RUN mkdir -p /usr/src/gems
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

COPY Gemfile /usr/src/gemfile/
COPY Gemfile.lock /usr/src/gemfile/
RUN bundle install --path /usr/src/gems --gemfile /usr/src/gemfile/Gemfile

EXPOSE 4000
CMD [ "bundle", "exec", "jekyll", "serve", "-H", "0.0.0.0", "-P", "4000" ]
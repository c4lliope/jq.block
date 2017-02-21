FROM ruby:latest

ADD Gemfile Gemfile.lock /block/
WORKDIR /block
RUN bundle install

ADD https://github.com/stedolan/jq/releases/download/jq-1.5/jq-linux64 /block/jq
RUN chmod +x jq

ADD https://raw.githubusercontent.com/assembleapp/scaffolds/master/.clients/assemble.rb /block/

ADD . /block/

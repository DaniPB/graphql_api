FROM ruby:2.5
RUN apt-get update -qq && apt-get install -y nodejs postgresql-client
RUN mkdir /graphql_api
WORKDIR /graphql_api
COPY Gemfile /graphql_api/Gemfile
COPY Gemfile.lock /graphql_api/Gemfile.lock
RUN bundle install
COPY . /graphql_api

# Add a script to be executed every time the container starts.
COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
EXPOSE 3000

# Start the main process.
CMD ["rails", "server", "-b", "0.0.0.0"]

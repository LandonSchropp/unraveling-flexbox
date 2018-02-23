FROM ruby:2.5.0

# Install Node.js
RUN apt-get update && apt-get install -y nodejs

# Install the gems
ADD Gemfile Gemfile.lock /app/
WORKDIR /app
RUN bundle install

# Mount the app
VOLUME /app

# Start the app
EXPOSE 4567
CMD bundle exec middleman

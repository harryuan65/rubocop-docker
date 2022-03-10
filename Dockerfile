FROM ruby:3.0.3-alpine
LABEL org.opencontainers.image.authors="harryuan65@gmail.com"
WORKDIR /app
VOLUME /app
RUN gem install rubocop:1.25.1 rubocop-rails rubocop-rspec

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]


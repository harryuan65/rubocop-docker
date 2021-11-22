FROM ruby:3.0.2-alpine
LABEL org.opencontainers.image.authors="harryuan65@gmail.com"
WORKDIR /app
VOLUME /app
RUN gem install rubocop -v 1.22.2
RUN gem install rubocop-rails
RUN ruby -e "puts 1+3"
RUN gem list
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]


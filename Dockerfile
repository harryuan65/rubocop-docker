FROM ruby:2.6.6-alpine
MAINTAINER harryuan65
WORKDIR /app
VOLUME /app
RUN gem install rubocop -v 0.92.0
RUN ruby -e "puts 1+3"
RUN gem list
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]


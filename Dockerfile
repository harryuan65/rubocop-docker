FROM ruby:3.0.3-alpine
LABEL org.opencontainers.image.authors="harryuan65@gmail.com"
WORKDIR /linter

RUN apk upgrade && apk add --update --no-cache build-base
COPY Gemfile.linter Gemfile.linter.lock /linter/
ENV BUNDLE_GEMFILE=Gemfile.linter
RUN gem install bundler
RUN bundle config path vendor/bundle && bundler install --jobs 4
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
# By default I expect you to mount target app into /app. Will use the rubocop config inside it.
CMD [ "/app" ]
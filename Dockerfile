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
# default mounts target app into /app, will use the rubocop config inside it.
CMD [ "/app" ]
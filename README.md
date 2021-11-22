# How it works

Temporarily add your project's pwd to `/app`, which is a volume dir in the container, and then it will run `rubocop` inside it.

# Pull Image

`harryuan65/rubocop-docker:latest`

# Usage

## For CI Stage

1. specify image: harryuan65/rubocop-docker
2. stage run command `rubocop`
3. done.

## For Local Projects

### Build image Locally

## Intel Mac

```bash
docker build . -t lint
```

## M1 Mac

```bash
 docker build --platform linux/amd64 . -t lint
```

### Lint your project

1. pull the image
2. cd inside your project
3. run `docker run --rm -v "$PWD:/app" lint` in your project's directory.
4. done.

## Dockerhub

https://hub.docker.com/repository/docker/harryuan65/rubocop-docker/general

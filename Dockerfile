FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=2.0.3

RUN gem install ey_snaplock --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["ey-snaplock"]
CMD ["--help"]

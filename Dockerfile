FROM alpine:latest
MAINTAINER Adron Hall <adronhall@gmail.com>

ENV HUGO_VERSION=0.19
RUN apk add --update wget ca-certificates && \
  cd /tmp/ && \
  wget https://github.com/spf13/hugo/releases/download/v${HUGO_VERSION}/hugo_${HUGO_VERSION}_Linux-64bit.tar.gz && \
  tar xzf hugo_${HUGO_VERSION}_Linux-64bit.tar.gz && \
  rm -r hugo_${HUGO_VERSION}_Linux-64bit.tar.gz && \
  mv hugo*/hugo* /usr/bin/hugo && \
  apk del wget ca-certificates && \
  rm /var/cache/apk/*

COPY ./run.sh /run.sh

RUN mkdir /usr/share/blog
WORKDIR /usr/share/blog

COPY /site /usr/share/blog

#CMD ["/run.sh"]

RUN hugo server --port 3000
EXPOSE 3000
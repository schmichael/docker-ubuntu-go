FROM ubuntu:14.04
MAINTAINER Michael Schurter <schmichael@lytics.io>

RUN apt-get update -q
RUN apt-get install -qy build-essential curl git mercurial bzr
RUN curl -s https://storage.googleapis.com/golang/go1.3.src.tar.gz | tar -v -C /usr/local -xz
RUN cd /usr/local/go/src && ./make.bash --no-clean 2>&1
# Set $GOPATH and $PATH
RUN mkdir -p /opt/go
ENV GOPATH /opt/go
ENV PATH /usr/local/go/bin:$GOPATH/bin:$PATH

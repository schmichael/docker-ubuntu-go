FROM ubuntu:12.04
MAINTAINER Michael Schurter <m@schmichael.com>

RUN apt-get update -q
RUN apt-get install -qy build-essential curl git mercurial
RUN curl -s https://go.googlecode.com/files/go1.2.1.src.tar.gz | tar -v -C /usr/local -xz
RUN cd /usr/local/go/src && ./make.bash --no-clean 2>&1
# Set $GOPATH and $PATH
RUN mkdir -p /opt/go
ENV GOPATH /opt/go
ENV PATH /usr/local/go/bin:$GOPATH/bin:$PATH

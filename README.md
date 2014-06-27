docker-ubuntu-go
================

Dockerfile for Ubuntu+Go

* Ubuntu 14.04
* Go 1.3
* `$GOROOT` in `/usr/local/go`
* `$GOPATH` in `/opt/go`

Usage
-----

Sample ``Dockerfile``:

```Dockerfile
FROM schmichael/ubuntu-go
MAINTAINER Michael Schurter <schmichael@lytics.io>
RUN go get github.com/kr/godep
ADD . /opt/go/src/github.com/bitly/nsq
RUN cd /opt/go/src/github.com/bitly/nsq && git checkout v0.2.28 && godep get ./...
```

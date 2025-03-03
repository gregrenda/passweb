FROM alpine:latest

RUN apk add --no-cache perl perl-http-server-simple git gnupg openssh tzdata
RUN adduser -D passweb
RUN ln -s /usr/share/zoneinfo/America/Los_Angeles /etc/localtime

COPY passweb /usr/local/bin

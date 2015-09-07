#version 0.0.1

FROM debian:wheezy
MAINTAINER Alex Huang "nikshuang@163.com"
ENV REFRESHED_AT 2015-9-7

RUN apt-get update
RUN apt-get install -y g++

CMD ["/usr/bin/make", "-C", "/opt/code", "&&", "/opt/code/client"]

EXPOSE 4444

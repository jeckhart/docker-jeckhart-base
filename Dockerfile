FROM gentoo/stage3-amd64:latest
MAINTAINER John Eckhart "jeckhart@yodle.com"

ADD build /build/docker-jeckhart-base

RUN /build/docker-jeckhart-base/prepare.sh
RUN /build/docker-jeckhart-base/cleanup.sh

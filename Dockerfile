FROM gentoo/stage3-amd64:latest
MAINTAINER John Eckhart "jeckhart@yodle.com"

ADD build/prepare.sh build/profile build/cleanup.sh /build/docker-jeckhart-base/
ADD build/portage/ /build/docker-jeckhart-base/portage/

RUN /build/docker-jeckhart-base/prepare.sh

ADD build/python.sh /build/docker-jeckhart-base/

RUN /build/docker-jeckhart-base/python.sh
RUN /build/docker-jeckhart-base/cleanup.sh

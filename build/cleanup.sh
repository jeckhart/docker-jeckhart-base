#!/bin/bash

source /build/docker-jeckhart-base/profile

rm -rf /tmp/* /var/tmp/*
rm -rf /usr/portage
mkdir /usr/portage
rm -f /etc/ssh/ssh_host_*

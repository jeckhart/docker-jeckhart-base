#!/bin/bash

source /build/docker-jeckhart-base/profile

echo "en_US.UTF-8 UTF-8" > /etc/locale.gen
locale-gen

rsync -rva /build/docker-jeckhart-base/portage/ /etc/portage/

emerge-webrsync

emerge -v eix vim
eix-update

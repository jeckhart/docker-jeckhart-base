#!/bin/bash

source /build/docker-jeckhart-base/profile

# pypy uses EC extensions so rebuild openssl and openssh without bindist
emerge -v1 openssl openssh
emerge -v vim eix pypy-bin

# Weird that emerge isn't bootstrapping these correctly
wget https://bootstrap.pypa.io/ez_setup.py -O - | python
wget https://bootstrap.pypa.io/ez_setup.py -O - | pypy
emerge -v1 --nodeps packaging setuptools pbr

emerge -v virtualenvwrapper dev-python/pip

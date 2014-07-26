# Arch Linux using the official bootstrap file that can be used from any other distribution.
FROM scratch
MAINTAINER Sven-Hendrik Haase <sh@lutzhaase.com>
ADD pkgdir /
RUN pacman-key --init; \
    pacman-key --populate archlinux; \
    pacman -Syu --noconfirm base; \
    locale-gen;
CMD /bin/bash

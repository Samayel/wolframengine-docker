FROM ubuntu:22.04

MAINTAINER Markus John <johm@quyo.de>

USER root

ENV DEBIAN_FRONTEND=noninteractive

#
# Install ubuntu packages
#
RUN apt-get update \
 && apt-get install -y \
      curl \
      xz-utils \
 && rm -rf /var/lib/apt/lists/*

#
# Install Wolfram Engine
#
RUN curl -f -sS -L -o /tmp/wolfram-engine https://account.wolfram.com/download/public/wolfram-engine/desktop/LINUX \
 && bash /tmp/wolfram-engine -- -auto -verbose \
 && rm -f /tmp/wolfram-engine

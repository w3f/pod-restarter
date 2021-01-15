FROM ubuntu:20.04

RUN apt-get update && \
  apt-get install --no-install-recommends -y \
  ca-certificates \
  curl \
  libssl1.0.0 \
  libssl-dev

ENV KUBECTL_VERSION=v1.18.1

RUN curl -LO https://storage.googleapis.com/kubernetes-release/release/${KUBECTL_VERSION}/bin/linux/amd64/kubectl && \
  chmod a+x kubectl && \
  mv kubectl /usr/local/bin

WORKDIR /scripts

COPY scripts/ .
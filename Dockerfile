FROM ubuntu:latest

RUN apt-get update && \
  apt-get install --no-install-recommends -y \
  ca-certificates \
  curl

RUN curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl" && \
  chmod a+x kubectl && \
  mv kubectl /usr/local/bin

WORKDIR /scripts

COPY scripts/ .
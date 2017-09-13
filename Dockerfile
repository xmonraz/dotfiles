FROM ubuntu:17.04

WORKDIR /root
COPY setup.sh .
RUN apt-get update && apt-get install -y sudo
RUN sh setup.sh

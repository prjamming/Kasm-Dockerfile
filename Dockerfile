FROM ubuntu:22.04

RUN apt update && apt upgrade
RUN apt-get install curl
RUN cd /tmp
RUN curl -O https://kasm-static-content.s3.amazonaws.com/kasm_release_1.15.0.06fdc8.tar.gz
RUN tar -xf kasm_release_1.15.0.06fdc8.tar.gz
RUN bash kasm_release/install.sh --accept-eula --swap-size 8192

EXPOSE 443

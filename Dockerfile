FROM ubuntu:latest
MAINTAINER cocuh<cocuh.kk@gmail.com>

RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y mecab libmecab-dev mecab-ipadic-utf8 git make curl xz-utils file
RUN git clone --depth 1 https://github.com/neologd/mecab-ipadic-neologd.git /tmp/neologd\
    && cd /tmp/neologd \
    && yes yes |./bin/install-mecab-ipadic-neologd -n -u

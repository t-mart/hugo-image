FROM golang:1.13.5-buster

RUN apt-get update \
    && apt-get -y install --no-install-recommends git \
    && rm -rf /var/lib/apt/lists/* \
    && cd /usr/src \
    # https://gohugo.io/getting-started/installing/#source
    && git clone https://github.com/gohugoio/hugo.git \
    && cd hugo \
    && go install --tags extended

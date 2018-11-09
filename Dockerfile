FROM debian:jessie-slim
MAINTAINER Christof Spies <christof.spies@stfv-koeln.de>

RUN apt-get update && \
    apt-get install -y \
    curl \
    make \
    --no-install-recommends && \
    curl -sL https://deb.nodesource.com/setup_8.x | bash - && \
    apt-get install -y nodejs --no-install-recommends

RUN apt-get update && apt-get install -y dirmngr apt-transport-https --no-install-recommends && \
    apt-key advanced --keyserver pgp.mit.edu --recv-keys 90E9F83F22250DD7 && \
    echo "deb https://releases.wikimedia.org/debian jessie-mediawiki main" > /etc/apt/sources.list.d/parsoid.list && \
    apt-get update && apt-get install -y parsoid --no-install-recommends

RUN sed -i /uri:/s/localhost\\\/w/mediawiki/g /etc/mediawiki/parsoid/config.yaml && \
    sed -i /domain:/s/localhost/mediawiki/g /etc/mediawiki/parsoid/config.yaml

RUN service parsoid restart
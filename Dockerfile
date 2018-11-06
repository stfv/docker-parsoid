FROM debian:jessie-slim
MAINTAINER Christof Spies <christof.spies@stfv-koeln.de>

RUN apt-get update && \
    apt-get install -y \
    curl \
    make && \
    curl -sL https://deb.nodesource.com/setup_8.x | bash - && \
    apt-get install -y nodejs

RUN apt-get update && apt-get install -y dirmngr apt-transport-https && \
    apt-key advanced --keyserver pgp.mit.edu --recv-keys 90E9F83F22250DD7 && \
    echo "deb https://releases.wikimedia.org/debian jessie-mediawiki main" | tee /etc/apt/sources.list.d/parsoid.list && \
    apt-get update && apt-get install -y parsoid


## You may also need development tools to build native addons:
##     sudo apt-get install gcc g++ make
## To install the Yarn package manager, run:
##     curl -sL https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
##     echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
##     sudo apt-get update && sudo apt-get install yarn
    
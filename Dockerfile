FROM debian:jessie-slim
MAINTAINER Christof Spies <christof.spies@stfv-koeln.de>

RUN apt-get update && \
    apt-get install -y curl && \
    curl -sL https://deb.nodesource.com/setup_11.x | bash - && \
    apt-get install -y nodejs

## You may also need development tools to build native addons:
##     sudo apt-get install gcc g++ make
## To install the Yarn package manager, run:
##     curl -sL https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
##     echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
##     sudo apt-get update && sudo apt-get install yarn
    
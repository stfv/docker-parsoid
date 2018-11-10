FROM debian:jessie-slim
MAINTAINER Christof Spies <christof.spies@stfv-koeln.de>

RUN apt-get update \
    	&& apt-get install -y --no-install-recommends \
    		curl \
    		make \
    		dirmngr \
    		apt-transport-https \
    		ca-certificates

RUN curl -s https://deb.nodesource.com/gpgkey/nodesource.gpg.key | apt-key add - \
 	&& echo 'deb https://deb.nodesource.com/node_8.x jessie main' > /etc/apt/sources.list.d/nodesource.list \
    && echo 'deb-src https://deb.nodesource.com/node_8.x jessie main' >> /etc/apt/sources.list.d/nodesource.list \
    && apt-get update \
    	&& apt-get install -y --no-install-recommends \
        	nodejs

RUN apt-key advanced --keyserver pgp.mit.edu --recv-keys 90E9F83F22250DD7 \
    && echo "deb https://releases.wikimedia.org/debian jessie-mediawiki main" > /etc/apt/sources.list.d/parsoid.list \
    && apt-get update \
    	&& apt-get install -y --no-install-recommends \
    		parsoid

RUN rm -rf /var/lib/apt/lists/*

RUN sed -i /uri:/s/localhost\\\/w/mediawiki/g /etc/mediawiki/parsoid/config.yaml \
    && sed -i /domain:/s/localhost/mediawiki/g /etc/mediawiki/parsoid/config.yaml

RUN service parsoid restart
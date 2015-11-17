FROM alpine:latest

MAINTAINER Damien DUPORTAL <damien.duportal@gmail.com>
MAINTAINER Christophe FURMANIAK <christophe.furmaniak@gmail.com>
MAINTAINER Joseph PAGE <https://github.com/josephpage>
MAINTAINER Ed Morley <https://github.com/edmorley>

#ENV DEBIAN_FRONTEND noninteractive
ARG COMPOSE_VERSION

RUN apk --update add py-pip \
	&& pip install -U docker-compose==${COMPOSE_VERSION}

# This container is a chrooted docker-compose
WORKDIR /app
ENTRYPOINT ["/usr/bin/docker-compose"]
CMD ["--version"]

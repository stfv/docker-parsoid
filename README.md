# Docker Parsoid

Dokumentation der Anpassungen am Docker Image von Debian Stretch Slim für den Betrieb mit Parsoid.

## Verwendete Dockerfiles

Das lokale Dockerfile basiert auf folgenden Dockerfile von Drittanbietern:
* [debian:jessie-slim](https://github.com/debuerreotype/debuerreotype/blob/master/Dockerfile)

## Anpassungen

Auf dem Debian Image wird Parsoid in der Version 0.9.0 für Mediawiki installiert.

## Automatische Builds auf Docker Hub

Automatische Builds auf Docker Hub wurden nach [Anleitung](https://docs.docker.com/docker-hub/builds/) aktiviert.

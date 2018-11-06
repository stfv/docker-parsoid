# Docker Parsoid

Dokumentation der Anpassungen am Docker Image von Debian Jessie Slim für den Betrieb mit Parsoid.

## Verwendete Dockerfiles

Das lokale Dockerfile basiert auf folgenden Dockerfile von Drittanbietern:
* [debian:jessie-slim](https://github.com/debuerreotype/debuerreotype/blob/master/Dockerfile)

## Anpassungen

* Installiert nodejs 8.x
* Installiert Parsoid 0.9.0
* Passt die Konfiguration an

## Einbinden

* Erwartet das Mediawiki auf dem Host *mediawiki*
* Wird auf dem Host *parsoid* und Port *8142* angesprochen

## Automatische Builds auf Docker Hub

Automatische Builds auf Docker Hub wurden nach [Anleitung](https://docs.docker.com/docker-hub/builds/) aktiviert.

FROM ghcr.io/daohung2u/php8.1:main

USER root
RUN apt-get update && pecl channel-update pecl.php.net && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends supervisor
COPY ./.docker/supervisord.conf /etc/supervisord.conf
COPY ./.docker/supervisor.d /etc/supervisor.d
USER www
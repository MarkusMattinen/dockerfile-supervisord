# supervisord on Ubuntu Trusty
FROM markusma/ubuntu:trusty
MAINTAINER Markus Mattinen <markus@gamma.fi>

RUN apt-get update \
 && apt-get install -y --no-install-recommends supervisor \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

ADD config/etc/supervisor/supervisord.conf /etc/supervisor/supervisord.conf

CMD ["/usr/bin/supervisord", "-c", "/etc/supervisor/supervisord.conf"]

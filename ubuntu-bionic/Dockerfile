# supervisord on Ubuntu Bionic
FROM markusma/ubuntu:bionic

RUN git clone https://github.com/MarkusMattinen/supervisor.git -b prepend-timestamp /tmp/supervisor \
 && cd /tmp/supervisor \
 && pip3 install . \
 && ln -sf /usr/local/bin/supervisord /usr/bin/supervisord \
 && ln -sf /usr/local/bin/pidproxy /usr/bin/pidproxy \
 && cd / \
 && rm -rf /tmp/supervisor \
 && mkdir -p /var/log/supervisor

ADD config/etc/supervisor/supervisord.conf /etc/supervisor/supervisord.conf

CMD ["/usr/bin/supervisord", "-c", "/etc/supervisor/supervisord.conf"]

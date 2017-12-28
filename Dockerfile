FROM phusion/baseimage:latest

RUN apt-get update && apt-get install -y python-avahi && \
rm -rf /var/lib/apt/lists/* && \
mkdir -p /etc/avahi/service

COPY ./avahi-alias.py /usr/local/bin/avahi-alias
RUN chmod +x /usr/local/bin/avahi-alias
VOLUME /etc/avahi/service

ENTRYPOINT ["avahi-alias"]

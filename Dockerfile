FROM debian:jessie
#MAINTAINER Matthias Neugebauer <mtneug@mailbox.org>

RUN apt-get update \
 && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends icecast2 \
 && rm -rf /var/lib/apt/lists/*

RUN useradd -mg icecast streamer

USER streamer

COPY icecast.xml /home/streamer/icecast.xml.tpl
COPY entrypoint.sh /home/streamer/
#RUN chown icecast2:icecast /icecast.xml.tpl

EXPOSE 8000
ENTRYPOINT ["/home/streamer/entrypoint.sh"]

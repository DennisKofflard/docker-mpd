FROM debian:wheezy
MAINTAINER Yunia <yunia@yunia.nl>

RUN apt-get update && apt-get upgrade -y

RUN apt-get install -yq mpd
ADD ./sources/mpd.conf /etc

EXPOSE 6600
VOLUME ["/music"]
VOLUME ["/mpd"]
ENTRYPOINT ["/usr/bin/mpd", "--no-daemon", "/etc/mpd.conf"]


#!/bin/sh
docker run -d -p 6600:6600 --name mpd -v /storage/data/music:/music -v /storage/config/mpd:/mpd yunia/docker-mpd

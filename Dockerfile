FROM alpine:latest

RUN apk add --no-cache mpd && mkdir -p /music /playlists /var/lib/mpd /run/mpd

EXPOSE 6600 8000

CMD ["mpd", "--no-daemon", "--stdout", "/etc/mpd.conf"]

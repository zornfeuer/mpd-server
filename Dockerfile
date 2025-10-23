FROM alpine:latest
RUN apk add --no-cache mpd
EXPOSE 6600 8000
CMD ["mpd", "--no-daemon", "--stdout", "/etc/mpd.conf"]

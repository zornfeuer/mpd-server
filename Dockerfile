FROM alpine:latest
RUN apk add --no-cache mpd mpc && \
  rm -f /etc/mpd.conf
EXPOSE 6600 8000
CMD ["mpd", "--no-daemon", "--stdout", "/etc/mpd.conf"]

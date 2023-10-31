# https://stackoverflow.com/a/47960145
FROM alpine:latest

RUN apk --no-cache add curl

COPY crontab /etc/crontabs/root

# start crond with log level 8 in foreground, output to stderr
CMD ["crond", "-f", "-d", "8"]

# https://stackoverflow.com/a/47960145
FROM alpine:latest

RUN apk --no-cache add curl

# Add the script to the Docker Image
ADD cronjob.sh /root/cronjob.sh

# Give execution rights on the cron scripts
RUN chmod 555 /root/cronjob.sh

# Set up the cron job
RUN echo '*/10 * * * * /root/cronjob.sh' > /etc/crontabs/root

# start crond with log level in foreground, output to stderr
CMD ["crond", "-f", "-d", "4"]

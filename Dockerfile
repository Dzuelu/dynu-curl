# https://stackoverflow.com/a/47960145
FROM alpine:latest

RUN apk --no-cache add curl

# Add the script to the Docker Image
ADD cronjob.sh /root/cronjob.sh

# Give execution rights on the cron scripts
RUN chmod 0644 /root/cronjob.sh

# Set up the cron job
RUN echo '* * * * * /root/cronjob.sh' | crontab

# start crond with log level 8 in foreground, output to stderr
CMD ["crond", "-f", "-d", "8"]

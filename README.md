# dynu-curl

A simple cron job to update a host in dynu every 10 minutes using curl.


### Example docker compose
```yml
version: '3'

services:
  dynu:
    build: https://github.com/Dzuelu/dynu-curl.git
    environment:
      - USER=dynu_username
      - PASS=dynu_password
      - HOSTNAME=my-hostname.ddnsfree.com
    restart: 'unless-stopped'
```


### Links
https://github.com/Ekito/docker-cron
https://www.dynu.com/DynamicDNS/IPUpdateClient/cURL

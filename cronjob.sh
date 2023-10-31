#! /bin/sh

curl --no-progress-meter -u "$USER:$PASS" "https://api.dynu.com/nic/update\?hostname=$HOSTNAME"

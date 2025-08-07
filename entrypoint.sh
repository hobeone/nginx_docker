#!/bin/sh
crond -d 8 -c /etc/crontabs/ 

# Start nginx in the foreground
nginx -g 'daemon off;'

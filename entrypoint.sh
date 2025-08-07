#!/bin/sh

# Start cron in the background
cron -L 15

# Start nginx in the foreground
nginx -g 'daemon off;'

#!/bin/bash
trap "exit" SIGINT
mkdir /var/htdocs
while :
do
    # shellcheck disable=SC2046
    echo $(date) Writing fortune to /var/htdocs/index.html
    /usr/games/fortune > /var/htdocs/index.html
    sleep "$INTERVAL"
done

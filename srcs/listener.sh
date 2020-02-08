#! /bin/bash

service mysql start

service php7.3-fpm start

service nginx start

while sleep 60; do
  pgrep php
  PROCESS_1_STATUS=$?
  pgrep mysql
  PROCESS_2_STATUS=$?
  pgrep nginx
  PROCESS_3_STATUS=$?
  if [ $PROCESS_1_STATUS -ne 0 -o $PROCESS_2_STATUS -ne 0 -o $PROCESS_3_STATUS -ne 0 ]; then
    echo "A process has been stopped or exited."
    exit 1
  fi
done
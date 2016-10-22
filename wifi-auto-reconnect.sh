#!/bin/bash

while true ; do
  if ifconfig wlan0 | grep -q "inet addr:" ; then
    echo "$(date) Network is up."
  else
    echo "$(date) Network connection down! Attempting reconnection."
    ifup --force wlan0
  fi
  sleep 5
done

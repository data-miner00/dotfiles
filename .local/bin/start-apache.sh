#!/usr/bin/env bash
set +x

if [[ ! $(pacman -Qe | grep apache) ]]; then
  echo "Apache/httpd is currently not installed."
  exit 1
fi

if [[ $(systemctl status httpd | grep running) ]]; then
  echo "Apache server is already running. Visit 'localhost' in the browser."
  exit 0
fi

sudo systemctl start httpd.service

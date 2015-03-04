#!/bin/sh
# meek-browser-helper program for Tor Browser on Linux
exec "./firefox" \
  -no-remote -profile "TorBrowser/Data/Browser/profile.meek-http-helper"

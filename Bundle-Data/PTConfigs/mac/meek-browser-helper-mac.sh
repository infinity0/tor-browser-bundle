#!/bin/sh
# meek-browser-helper program for Tor Browser on Mac OS X

# Mac OS X needs an absolute profile path.
# https://bugzilla.mozilla.org/show_bug.cgi?id=673955
exec "PluggableTransports/TorBrowser.app.meek-http-helper/Contents/MacOS/firefox" \
  -no-remote -profile "$(dirname "$(pwd -P)")/Data/Browser/profile.meek-http-helper"

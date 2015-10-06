#!/bin/sh
# meek-browser-helper program for Tor Browser on Linux

# Unset environment variables that Firefox sets after a restart (as
# caused by, for example, an update or the installation of an add-on).
# XRE_PROFILE_PATH, in particular, overrides the -profile option that
# runFirefox sets, causing Firefox to run with profile.default instead
# of profile.meek-http-helper, which conflicts with the profile.default
# that is already running. See
# https://trac.torproject.org/projects/tor/ticket/13247, particularly
# #comment:17 and #comment:18. The environment variable names come from
# https://hg.mozilla.org/mozilla-central/file/cfde3603b020/toolkit/xre/nsAppRunner.cpp#l3941
unset XRE_PROFILE_PATH XRE_PROFILE_LOCAL_PATH XRE_PROFILE_NAME XRE_START_OFFLINE NO_EM_RESTART XUL_APP_FILE XRE_BINARY_PATH

exec "./firefox" \
  -no-remote -profile "TorBrowser/Data/Browser/profile.meek-http-helper"

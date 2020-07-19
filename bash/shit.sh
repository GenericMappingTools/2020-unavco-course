#!/usr/bin/env -S bash -e
# GMT modern mode bash template
# Date:    2020-07-18T14:44:57
# User:    pwessel
# Purpose: Purpose of this script
export GMT_SESSION_NAME=$$	# Set a unique session name
gmt begin figurename
	# Place modern session commands here
gmt end show

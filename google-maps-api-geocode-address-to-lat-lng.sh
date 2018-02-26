#!/bin/sh

## 
# Google Maps API shell script to geocode from an
# an arbitrary address to a latitude and longitude
#
# Syntax:
#
#     google-maps-api-geocode-address-to-lat-lng <address> 
#
# Example:
#
#     $ export GOOGLE_MAPS_API_KEY=abcdefghijklm
#     $ google-maps-api-geocode-address-to-lat-lng "1 Main St, San Francisco CA 94111" 
#     37.7931108 -122.3964898
#
# This script uses the free Google geocoding API here:
# http://code.google.com/apis/maps/documentation/geocoding/
#
#
# ## Related
#
# You may want to compare these two implemenations:
#
#  * google-maps-api-geocode-address-to-lat-lng.rb (Ruby)
#  * google-maps-api-geocode-address-to-lat-lng.sh (Shell)
#
#
# ## Tracking
#
#   * Command: google-maps-api-geocode-address-to-lat-lng.sh
#   * Version: 2.0.0
#   * Created: 2011-01-25
#   * Updated: 2018-01-11
#   * License: GPL
#   * Contact: Joel Parker Henderson (joel@joelparkerhenderson.com)
##

set -euf

## SixArm shell functions
out() { printf %s\\n "$*" ; }
err() { >&2 printf %s\\n "$*" ; }
die() { >&2 printf %s\\n "$*" ; exit 1 ; }
cmd() { command -v $1 >/dev/null 2>&1 ; }
die_cmd() { die "Command needed: $1" ; }
die_var() { die "Variable needed: $1" ; }

CURL=${CURL:-curl}; cmd "$CURL" || die_cmd "$CURL"
JQ=${JQ:-jq}; cmd "$JQ" || die_cmd "$JQ"

## Args
address="${1:-}"

## Preflight
[ -z ${GOOGLE_MAPS_API_KEY+x} ] && die_var GOOGLE_MAPS_API_KEY
[ -z "$address" ] && die_var address

## Main
"$CURL" -sSLG "https://maps.googleapis.com/maps/api/geocode/json" \
  --data-urlencode "key=$GOOGLE_MAPS_API_KEY" \
  --data-urlencode "address=$address" |
"$JQ" -r ".results[0].geometry.location | \"\(.lat) \(.lng)\""


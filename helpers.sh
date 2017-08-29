#!/bin/sh
set -euf -o pipefail

##
# Helper functions that we can include in typical scripts.
#
# Contact: Joel Parker Henderson (joel@joelparkerhenderson.com)
# License: GPL
# Updated: 2015-12-22
##

# Print to stdout.
out () { printf %s\\n "$*" >&1 ; }

# Print to stderr.
err () { printf %s\\n "$*" >&2 ; }

# Print to stdout with a timestamp, PID, program name, and message.
log () { printf %s\ %s\ %s\ %s\\n $( now ) $$ "$0" "$*" ; }

# Print timestamp by using UTC and formatting using ISO 8601.
now () { printf %s $( date -u "+%Y-%m-%dT%H:%M:%SZ" ) ; }

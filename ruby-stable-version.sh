#!/bin/bash
set -euf -o pipefail

##
# Print the current Ruby stable version.
#
# Example:
#
#    $ ruby-stable-version.sh
#    2.1.5
#
# This implementation fetches the Ruby website download page,
# and parses the result to find the file download link and version.
#
# Contact: Joel Parker Henderson (joel@joelparkerhenderson.com)
# License: GPL
# Updated: 2015-01-25
##

curl --silent --location https://www.ruby-lang.org/en/downloads/ |
sed --silent '/.*ruby-\(.*\).tar.gz.*/{s//\1/p;q}'

#!/bin/sh
#
# Print the current Ruby stable version.
#
# Example:
#
#    $ ruby-stable-version
#    2.3.1
#
# This implementation fetches the Ruby website download page,
# then searches the HTML to match a link to a download file,
# then extracts the version string, such as "2.3.1".
#
# This implementation intentionally uses just shell tools,
# because we want the script to be as portable as possible.
#
# ## Tracking
#
# Command: ruby-stable-version
# Contact: Joel Parker Henderson (joel@joelparkerhenderson.com)
# License: GPL
# Created: 2014-12-06
# Updated: 2016-09-02
##
set -euf
curl --silent --location https://www.ruby-lang.org/en/downloads/ |
sed --silent '/.*ruby-\(.*\).tar.gz.*/{s//\1/p;q}'

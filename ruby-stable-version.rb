#!/usr/bin/env ruby -r net/http
#
# Print the current Ruby stable version.
#
# Example:
#
#    $ ruby-stable-version.rb
#    2.1.5
#
# This implementation fetches the Ruby website download page,
# and parses the result to find the file download link and version.
#
# Contact: Joel Parker Henderson (joel@joelparkerhenderson.com)
# License: GPL
#
puts Net::HTTP.get(URI("https://www.ruby-lang.org/en/downloads/"))[/http.*ruby-(.*).tar.gz/,1]

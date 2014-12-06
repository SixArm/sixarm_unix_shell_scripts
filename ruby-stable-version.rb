#!/usr/bin/env ruby
#
# Print the current Ruby stable version.
#
# Example:
#
#    $ ruby ruby-stable-version.rb
#    2.1.5
#
# This implementation fetches the Ruby website download page,
# and parses the result to find the file download link and version.
#
# Author: Joel Parker Henderson (joel@joelparkerhenderson.com)
# License: GPL
#
require 'net/http'
txt = Net::HTTP.get(URI("https://www.ruby-lang.org/en/downloads/"))
ver = txt[/\/ruby-(.*?).tar.gz/,1]

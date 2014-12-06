#!/usr/bin/env ruby
require 'net/http'
txt = Net::HTTP.get(URI("https://www.ruby-lang.org/en/downloads/"))
ver = txt.sub(/\A.*?cache.ruby-lang.org.*?ruby-(.*?).tar.gz.*\Z/m){$1}

#!/usr/bin/env ruby

require 'asana'

# Use your own Asana personal access token
token = ENV['ASANA_PERSONAL_ACCESS_TOKEN']

# Authenticate
client = Asana::Client.new do |c|
  c.authentication :access_token, token
end

me = client.users.me

puts "Hello world!"
puts "My name is " + me.name
puts "M primary Asana workspace is " + me.workspaces[0].name

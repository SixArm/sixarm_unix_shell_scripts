#!/usr/bin/env ruby

##
# Asana API demo
#
# Syntax:
#
#     asana-api-demo.rb
#
# Example:
#
#     $ ASANA_PERSONAL_ACCESS_TOKEN="0/ca581dda1b807b654e09b05bd8a8c70" \
#       asana-api-demo.rb
#
#
# ## Introduction
#
# Developers: see https://asana.com/developers
#
# API: https://asana.com/guide/help/api/api
#
# Clients: https://asana.com/developers/documentation/getting-started/client-libraries
#
#
# ## Setup
#
# To install dependencies:
#
#     $ gem install asana
#
# To generate your own Asana personal access token:
#
#   * Go to Asana https://asana.com
#   * Sign in as usual
#   * Go to your settings
#   * Tap "Create New Personal Access Token"
#
###

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

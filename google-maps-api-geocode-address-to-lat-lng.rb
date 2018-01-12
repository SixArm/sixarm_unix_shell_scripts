#!/usr/bin/env ruby

##
# Google Maps API ruby command line script to geocode
# from an arbritray address to latitude and longitude
#
# Example:
#
#     geocode-address-to-lat-lng "1 Main St, San Francisco CA 94111" 
#     => 37.7931108 -122.3964898
#
# This script uses the free Google geocoding API here:
# http://code.google.com/apis/maps/documentation/geocoding/
#
# You may want to compare these two implemenations:
#
#  * google-maps-api-geocode-address-to-lat-lng.rb (Ruby)
#  * google-maps-api-geocode-address-to-lat-lng.sh (Shell)
#
#
# ## Tracking
#
#   * Program: google-maps-api-geocode-address-to-lat-lng.rb
#   * Version: 2.0.0
#   * Created: 2011-01-25
#   * Updated: 2018-01-11
#   * License: GPL
#   * Contact: Joel Parker Henderson (joel@joelparkerhenderson.com)
##

require 'net/http'
require 'cgi'
require 'json'

google_maps_api_key=ENV["GOOGLE_MAPS_API_KEY"]
address = ARGV.shift

# Tweak Ruby's built-in HTTP module so it can handle HTTPS GET
def https_get_uri(uri)
  http = Net::HTTP.new(uri.host, uri.port)
  http.use_ssl = true
  http.verify_mode = OpenSSL::SSL::VERIFY_NONE
  request = Net::HTTP::Get.new(uri.request_uri)
  response = http.get(request)
  return response
end
  
begin

  # Google provides a geocoder web service that can process an address into a location.
  geocoder = "https://maps.googleapis.com/maps/api/geocode/json"

  # Prepare the freeform address text into a valid web URI.
  href = geocoder + "?" + "key=" + CGI.escape(google_maps_api_key) + "&" + "address=" + CGI.escape(address)
  uri = URI.parse(href)
  
  # Connect to Google API.
  response = Net::HTTP.get(uri)
  json = JSON.parse(response)

  # Check for errors.
  status = json['status']
  if status!='OK' then raise "Error status #{status}" end

  # Get the first result, which is the one Google thinks is the most likely match.
  result = json['results'].first

  # The result has a location field, which has the latitude and longitude fields.
  lat = result['geometry']['location']['lat']
  lng = result['geometry']['location']['lng']

  # Print the latitude and longitude.
  puts "#{lat} #{lng}"

rescue Exception => e
  # Print the error message to STDERR.
  $stderr.puts "#{e.message} for address: #{address}"
end 

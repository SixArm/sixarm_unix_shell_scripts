#!/usr/bin/env python3

##
# Asana API demo
#
# Syntax:
#
#     asana-api-demo
#
# Example:
#
#     $ ASANA_PERSONAL_ACCESS_TOKEN="0/ca581dda1b807b654e09b05bd8a8c70" \
#       asana-api-demo.py
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
#     $ pip install asana
#
# To generate your own Asana personal access token:
#
#   * Go to Asana https://asana.com
#   * Sign in as usual
#   * Go to your settings
#   * Tap "Create New Personal Access Token"
#
##

import os
import sys
import asana

# Get the token
token = os.environ['ASANA_PERSONAL_ACCESS_TOKEN']

# Construct an Asana client
client = asana.Client.access_token(token)

# Set things up to send the name of this script to us to show that you succeeded! This is optional.
client.options['client_name'] = "hello_world_python"

# Get your user info
me = client.users.me()

# Print out your information
print("Hello world!")
print(f" My name is {me['name']}")
print(f" and my primary Asana workspace is {me['workspaces'][0]['name']}")

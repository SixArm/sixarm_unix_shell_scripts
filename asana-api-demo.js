#!/usr/bin/env node

/**
Asana API demo

Syntax:

    asana-api-demo.js

Example:

    $ ASANA_PERSONAL_ACCESS_TOKEN="0/ca581dda1b807b654e09b05bd8a8c70" \
      asana-api-demo.js


## Introduction

Developers: see https://asana.com/developers

API: https://asana.com/guide/help/api/api

Clients: https://asana.com/developers/documentation/getting-started/client-libraries

## Setup

To install dependencies:

    $ Installation: npm install asana

To generate your own Asana personal access token:

  * Go to Asana https://asana.com
  * Sign in as usual
  * Go to your settings
  * Tap "Create New Personal Access Token"

**/

var asana = require('asana');

// Use your own Asana personal access token
var token = process.env.ASANA_PERSONAL_ACCESS_TOKEN;

// Construct an Asana client
var client = asana.Client.create().useAccessToken(token);

// Get your user info
client.users.me()
    .then(function(me) {
	// Print out your information
	console.log('Hello world!');
	console.log('My name is ' + me.name);
	console.log('My primary Asana workspace is ' + me.workspaces[0].name);
    });

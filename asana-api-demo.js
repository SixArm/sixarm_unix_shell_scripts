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

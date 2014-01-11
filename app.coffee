xmlrpc = require "xmlrpc"
config = require "./config"

client = xmlrpc.createClient
	host: config.host, port: config.port, path: "/xmlrpc.php"

client.methodCall "wp.getPosts", [config.id, config.username, config.password], (error, value) =>
	console.log error
	console.log value
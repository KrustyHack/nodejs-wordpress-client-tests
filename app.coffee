wordpress = require "./libs/wordpress"
config = require "./config"

w1 = new wordpress 
	host: config.host
	username: config.username
	password: config.password
	port: config.port
	path: "/xmlrpc.php"
	id: config.id

w1.getPosts()

#client = xmlrpc.createClient
#	host: config.host, port: config.port, path: "/xmlrpc.php"

#client.methodCall "wp.getPosts", [config.id, config.username, config.password], (error, value) =>
#	console.log error
#	console.log value
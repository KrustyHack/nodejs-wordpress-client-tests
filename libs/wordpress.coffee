xmlrpc = require "xmlrpc"

class Wordpress
	constructor: (options) ->

		unless options?
			throw new Error "Missing options"

		@host = options.host
		@username = options.username
		@password = options.password
		@port = options.port
		@path = options.path
		@id = options.id

		unless @host? || @username? || @password?
			throw new Error "Missing host, username or password"
		unless @port?
			@port = 80
		unless @path?
			@path = "/xmlrpc.php"
		unless @id?
			@id = 1

		@client = xmlrpc.createClient
			host: @host, port: @port, path: @path

	getPosts: () ->
		console.log @id, @username, @password
		@client.methodCall "wp.getPosts", [@id, @username, @password], (error, value) =>
			console.log error
			console.log value

module.exports = Wordpress
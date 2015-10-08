express = require 'express'
app = express()
path = require 'path'

# configuration 
app.use express.static path.join __dirname, 'public'

# setup server
server = app.listen(8000, ()=> 
	# alias address and port
	host = server.address().address
	port = server.address().port
	# print address/port to the console upon starting the server
	console.log 'Machine learning app listening at http://%s:%s', host, port
)

# routes
app.get('/', (req, res)=> 
	# serve up the index html page
	res.sendFile path.join __dirname+'/public/views/index.html'
)

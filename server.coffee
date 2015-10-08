express = require 'express'
app = express()
path = require 'path'

app.get('/', (req, res)=> 
	res.sendFile path.join __dirname+'/views/index.html'
);

server = app.listen(8000, ()=> 
	host = server.address().address
	port = server.address().port

	console.log 'Machine learning app listening at http://%s:%s', host, port
);
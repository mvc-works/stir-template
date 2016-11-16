
http = require 'http'
nested = require './examples/nested'

app = http.createServer (req, res) ->
  res.end nested()

app.listen 3000
console.log "listen at 3000"

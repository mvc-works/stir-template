
http = require 'http'

{$, $$} = require './coffee'

server = http.createServer (req, res) ->
  if req.url is '/'
    html = render()
    console.log html
    res.end html
  else
    res.end 'nothing'

port = 3000
server.listen port
console.log "server listening at #{port}"

renderItem = (data) ->
  $.div
    className: 'child'
    $.span {},
      data.name

render = ->
  cond = yes
  childElements = [
    name: 'a'
  ,
    name: 'b'
  ,
    name: 'c'
  ].map renderItem
  $.div
    className: $$.if cond,
      'is-ok'
      'not-ok'
    $.div
      className: $$.concat 'normal',
        if cond then 'activate'
        if other? then 'other'
      childElements
    'html content'
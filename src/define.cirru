
var
  core $ require :./core

= exports.doctype $ \ ()
  return ":<!DOCTYPE html>"

= exports.html $ core.createFactory :html

= exports.head $ core.createFactory :head

= exports.body $ core.createFactory :body

= exports.div $ core.createFactory :body

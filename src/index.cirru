
var
  define $ require :./define
  core $ require :./core

= exports.doctype define.doctype
= exports.html define.html
= exports.head define.head
= exports.body define.body

= exports.render core.render
= exports.createFactory core.createFactory
= exports.createElement core.createElement

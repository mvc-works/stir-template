
var
  define $ require :./define
  core $ require :./core

= exports.doctype define.doctype
= exports.html define.html
= exports.head define.head
= exports.title define.title
= exports.body define.body

= exports.link define.link
= exports.meta define.meta
= exports.script define.script

= exports.div define.div
= exports.span define.span
= exports.a define.a
= exports.code define.code
= exports.input define.input
= exports.textarea define.textarea

= exports.render core.render
= exports.createFactory core.createFactory
= exports.createElement core.createElement

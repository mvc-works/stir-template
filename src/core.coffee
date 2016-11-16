
close = require('./close')

formatProps = (props) ->
  content = ''
  keys = Object.keys(props)
  pieces = keys.map (key) ->
    value = props[key]
    "#{key}=\"#{value}\""

  pieces.join ' '

exports.createElement = (name, props, children...) ->
  childrenHtml = children.join('')
  props = props or {}
  keys = Object.keys(props)
  before = if keys.length > 0 then "<#{name} #{formatProps(props)}" else "<#{name}"
  after = if close.is(name) then " />" else ">#{childrenHtml}</#{name}>"
  before + after

exports.createFactory = (name) ->
  (props, children...) ->
    exports.createElement name, props, children...

exports.render = (children...) ->
  children.join('')

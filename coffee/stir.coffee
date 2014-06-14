
module.exports = $ = {}

names = require './names'
elements = require './elements'

renderProps = (props) ->
  propsList = []
  for key, value of props
    name = names[key] or key
    propsList.push {name, value}
  propsList = propsList.sort (a, b) ->
    a.name - b.name
  propsList
  .map (config) ->
    " #{config.name}=\"#{config.value}\""
  .join('')

for element, isSelfClose of elements
  do (element, isSelfClose) ->
    $[element] = (props, children...) ->
      propsString = renderProps props
      childrenString = ''
      if isSelfClose
        return "<#{element}#{propsString}></#{element}>"

      for child in children
        if child?
          if child instanceof Array
            childrenString += child.join('')
          else if typeof child is 'string'
            childrenString += child
          else throw new Error "#{child} is not HTML"
      return "<#{element}#{propsString}>#{childrenString}</#{element}>"
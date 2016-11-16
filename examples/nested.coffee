
stir = require '../src/index'

{html, head, body, div} = stir

link = stir.createFactory 'link'
script = stir.createFactory 'script'

module.exports = (data) ->
  stir.render stir.doctype,
    html null,
      head null,
        link()
        script()
      body null,
        div name: 'a', 'empty'
        div()

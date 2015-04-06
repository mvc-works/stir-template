
var
  stir $ require :../src/index
  html stir.html
  head stir.head
  body stir.body
  div $ stir.createFactory :div

= module.exports $ \ (data)
  return $ stir.render
    stir.doctype
    html null
      head null
      body null
        div (object (:name :a)) :empty
        div

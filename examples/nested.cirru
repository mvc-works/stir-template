
var
  stir $ require :../src/index
  html stir.html
  head stir.head
  body stir.body
  div stir.div
  link $ stir.createFactory :link
  script $ stir.createFactory :script

= module.exports $ \ (data)
  return $ stir.render
    stir.doctype
    html null
      head null
        link
        script
      body null
        div (object (:name :a)) :empty
        div

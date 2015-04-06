
var
  close $ require :./close

= exports.render $ \ (data)

  return :<div></div>

var $ formatProps $ \ (props)
  var
    content :
    keys $ Object.keys props
    pieces $ keys.map $ \ (key)
      var (value (. props key))
      return $ + key := ":\"" (String value) ":\""
  return $ pieces.join ": "

= exports.createElement $ \ (name props (children))
  var
    childrenHtml $ children.join :
    props $ or props (object)
    keys $ Object.keys props
    before
    after
  = before $ cond (> keys.length 0)
    + :< name ": " (formatProps props)
    + :< name
  = after $ cond (close.is name)
    + ": />"
    + :> childrenHtml :</ name :>
  return $ + before after

= exports.createFactory $ \ (name)
  return $ \ (props (children))
    return $ exports.createElement name props (... children)

= exports.render $ \ ((children))
  return $ children.join :

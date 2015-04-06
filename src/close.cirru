
-- https://github.com/facebook/react/blob/98fff823363b5820e110c1fd8be4b6c5d21fa099/src/browser/ui/ReactDOMComponent.js#L129

var
  tags $ array :area :base :br :col :embed :hr :img :input :keygen :link :meta :param :source :track :wbr

= exports.is $ \ (tagName)
  return $ in tags tagName

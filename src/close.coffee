
tags = [
  'area'
  'base'
  'br'
  'col'
  'embed'
  'hr'
  'img'
  'input'
  'keygen'
  'link'
  'meta'
  'param'
  'source'
  'track'
  'wbr'
]

exports.is = (tagName) ->
  tags['indexOf'](tagName) >= 0

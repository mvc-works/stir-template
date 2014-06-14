
module.exports = $$ = {}

$$.if = (cond, trueExpr, falseExpr) ->
  if cond then trueExpr else falseExpr

$$.concat = (args...) ->
  res = []
  for arg in args
    res.push arg if arg?
  res.join(' ')
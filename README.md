
Stir template
------

a server-side template engine inspired by React,
when I use that in CoffeeScript.

By "stir" I mean, I want to stir CoffeeScript with HTML,
so that generating HTML is easier and dirtier.

### Usage


```bash
npm i --save-dev stir-template
```

```coffee
{$, $$} = require 'stir-template'

renderItem = (data) ->
  $.div
    className: 'child'
    $.span {},
      data.name

render = ->
  cond = yes
  childElements = [
    name: 'a'
  ,
    name: 'b'
  ,
    name: 'c'
  ].map renderItem

  $.div
    className: $$.if cond,
      'is-ok'
      'not-ok'
    $.div
      className: $$.concat 'normal',
        if cond then 'activate'
        if other? then 'other'
      childElements
    'html content'
```

Read `example.coffee` for the whole demo.

### API

For supported elements, read `coffee/elements.coffee` for more.
The code was learnt from React:

* https://github.com/facebook/react/blob/master/src/browser/ReactDOM.js

For properties, like React, there are some alias, like `className` for `class`.
You may learn more in reading `coffee/names.coffee`, with related code at:

* https://github.com/facebook/react/blob/master/src/browser/ui/dom/SVGDOMPropertyConfig.js
* https://github.com/facebook/react/blob/master/src/browser/ui/dom/HTMLDOMPropertyConfig.js


### License

MIT

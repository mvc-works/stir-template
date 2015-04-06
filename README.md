
Stir template
------

A string-based HTML template library inspired by React.

### Usage

```bash
npm i --save-dev stir-template
```

Methods:

```cirru
stir.render
stir.createElement
stir.createFactory
```

Predefined:

```cirru
stir.doctype
stir.html
stir.head
stir.body
stir.div
```

Example in CirruScript:

```cirru
var
  stir $ require :stir-tempate
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
```

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

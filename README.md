
Stir template
------

A string-based HTML template library inspired by React.

### Usage

```bash
npm i --save-dev stir-template
```

or

```
yarn add --dev stir-template
```

Methods:

```coffee
stir.render
stir.createElement
stir.createFactory
```

Predefined:

```coffee
stir.doctype
stir.html
stir.head
stir.body
stir.title

stir.link
stir.meta
stir.script

stir.div
stir.span
stir.a
stir.code
stir.input
stir.textarea
```

Example in CoffeeScript:

```cirru
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
```

### Difference from React

`stir-template` **does not escape DOM properties**(which React does).
Object properties are directly rendered to DOM properties.

* https://github.com/facebook/react/blob/master/src/browser/ReactDOM.js
* https://github.com/facebook/react/blob/master/src/browser/ui/dom/SVGDOMPropertyConfig.js
* https://github.com/facebook/react/blob/master/src/browser/ui/dom/HTMLDOMPropertyConfig.js


### License

MIT

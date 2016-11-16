
core = require('./core')

exports.doctype = '<!DOCTYPE html>'

exports.html = core.createFactory('html')
exports.head = core.createFactory('head')
exports.body = core.createFactory('body')
exports.title = core.createFactory('title')
exports.link = core.createFactory('link')
exports.script = core.createFactory('script')
exports.meta = core.createFactory('meta')
exports.div = core.createFactory('div')
exports.span = core.createFactory('span')
exports.a = core.createFactory('a')
exports.code = core.createFactory('code')
exports.input = core.createFactory('input')
exports.textarea = core.createFactory('textarea')

#!/usr/bin/env coffee
project = 'localhost:3000'

require 'shelljs/make'
path = require 'path'
mission = require 'mission'

mission.time()

target.coffee = ->
  mission.coffee
    find: /\.coffee$/, from: 'coffee/', to: 'js/', extname: '.js'
    options:
      bare: yes

target.dev = ->
  target.coffee yes

target.watch = ->
  station = mission.reload()

  mission.watch
    files: ['coffee/', 'example.coffee']
    trigger: (filepath, extname) ->
      setTimeout ->
        station.reload project
      , 600

target.patch = ->
  mission.bump
    file: 'package.json'
    options:
      at: 'patch'

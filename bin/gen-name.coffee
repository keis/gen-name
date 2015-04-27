#!/usr/bin/env coffee

genName = require '../lib/gen-name'

char =
  dataset: 'elven'
  gender: 'female'

name = genName char, [
  genName.givenName()
  genName.surname()
]

console.log name

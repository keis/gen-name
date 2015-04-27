#!/usr/bin/env coffee

genName = require '../lib/gen-name'

father =
  dataset :'elven'
  gender: 'male'

char =
  dataset: 'elven'
  gender: 'female'
  father:
    name: genName father, [genName.givenName(), genName.surname()]

name = genName char, [
  genName.givenName()
  genName.patronym()
]

console.log name

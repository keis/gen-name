uniqueRandomArray = require 'unique-random-array'

module.exports = (details, names) ->
  (name(details) for name in names).join ' '

module.exports.givenName = (dataset) -> (details) ->
  dataset or= details.dataset
  rand = uniqueRandomArray require "../data/#{dataset}/#{details.gender}"
  rand()

module.exports.surname = (dataset) -> (details) ->
  dataset or= details.dataset
  rand = uniqueRandomArray require "../data/#{dataset}/surname"
  rand()

suffix =
  female: 'sdotter'
  male: 'sson'

module.exports.patronym = () -> (details) ->
  giveName = (/(.*) /.exec details.father.name)[1]
  giveName.replace /s?$/, suffix[details.gender]

module.exports.matronym = () -> (details) ->
  giveName = (/(.*) /.exec details.mother.name)[1]
  giveName.replace /s?$/, suffix[details.gender]

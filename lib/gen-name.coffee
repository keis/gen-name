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

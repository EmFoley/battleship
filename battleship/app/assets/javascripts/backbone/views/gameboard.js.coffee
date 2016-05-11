#= require backbone/templates/gameboard

class Battleship.Views.Gameboard extends Backbone.Marionette.ItemView
  template: JST['backbone/templates/gameboard']

  initialize: (options) ->
    debugger
    options: options

  templateHelpers: ->
    shipCoordinates: options.shipCoordinates
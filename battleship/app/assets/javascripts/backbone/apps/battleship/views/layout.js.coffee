#= require apps/battleship/templates/layout

Battleship.Views.Layout ?= {}

class Battleship.Views.Layout extends Backbone.Marionette.Layout
  template: 'apps/battleship/templates/layout'

  regions:
    'gameboard':  '.gameboard'
    'scoreboard': '.scoreboard'

  initialize: (options) ->
    @shipCoordinates = options.shipCoordinates

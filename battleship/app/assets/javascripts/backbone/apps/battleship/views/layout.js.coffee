#= require apps/battleship/templates/layout

Battleship.Views.Layout ?= {}

class Battleship.Views.Layout extends Backbone.Marionette.LayoutView
  template: 'apps/battleship/templates/layout'

  regions:
    'gameboard':  '.gameboard'
    'scoreboard': '.scoreboard'

  initialize: (options) ->
    debugger
    @gameboardView = new Battleship.Views.Gameboard 
      shipCoordinates: options.shipCoordinates

  onShow: ->
    @gameboard.show @gameboardView


#= require backbone/templates/layout
#= require backbone/views/gameboard

# Battleship.Views.Layout ?= {}

class Battleship.Views.Layout extends Backbone.Marionette.LayoutView
  template: JST['backbone/templates/layout']

  regions:
    'gameboard':  '.gameboard'
    'scoreboard': '.scoreboard'

  initialize: (options) ->
    debugger
    @gameboardView = new Battleship.Views.Gameboard 
      shipCoordinates: options.shipCoordinates

  onShow: ->
    @gameboard.show @gameboardView


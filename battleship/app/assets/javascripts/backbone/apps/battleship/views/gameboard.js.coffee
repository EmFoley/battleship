#= require apps/battleship/templates/gameboard

class Battleship.Views.Gameboard extends Backbone.Marionette.ItemView
  template: 'apps/battleship/templates/gameboard'

  initialize: (options) ->
    shipCoordinates = options.shipCoordinates
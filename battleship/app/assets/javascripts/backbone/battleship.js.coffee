#= require application
#= require_self
#= require apps/battleship/views/layout

Battleship = new Backbone.Marionette.Application()

Battleship.addRegions
  main: 'main'

Battleship.addInitializer (options) ->
  layout = new Battleship.Views.Layout(options)
    shipCoordinates = options.coordinates
  @main.show(layout)
#= require application
#= require apps/battleship/views/layout

Battleship ?= {}

Battleship = new Backbone.Marionette.Application()

Battleship.addRegions
  main: 'main'

Battleship.addInitializer (options) ->
  debugger
  layout = new Battleship.Views.Layout(options)
    shipCoordinates: options.coordinates
  @main.show(layout)
#= require_self

#= require ./models/base/model
#= require_tree ./models/base
#= require_tree ./models

#= require      ./views/base/view
#= require_tree ./views/base
#= require_tree ./views

@App =
  Models: {}
  Views: {}

_.extend App, Backbone.Events

$ ->
  Backbone.history.start pushState: true
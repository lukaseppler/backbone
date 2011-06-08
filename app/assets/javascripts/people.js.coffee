# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

class PersonView extends Backbone.Model
  url: "http://localhost:3000/people",
  name: "default name",
  initialize: ->
    alert "hello again"


window.a = new PersonView

a.set(name: "my second name")
a.save()


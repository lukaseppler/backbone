# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

class PersonModel extends Backbone.Model
  url: "http://localhost:3000/people",
  name: "default name" #,
  #initialize: ->
  #  alert "hello again"


window.a = new PersonModel

#a.set(name: "my second name")
#a.save()

class PersonView extends Backbone.View
  el:  ".my_id",
  render: ->
    #template = Mustache.to_html("{{name}} spends {{name}}", {name:"my name"})
    template = ich.person({name: "person 1"})
    $(@el).append(template)

window.b = new PersonView
  


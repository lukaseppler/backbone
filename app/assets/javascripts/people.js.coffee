# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

class PersonModel extends Backbone.Model
  url: "http://localhost:3000/people",
  #name: "default name",
  #initialize: ->
  #  alert "hello again"


a = new PersonModel({name: "Hans"})
#a.set({name: "my second name"})
#a.name = "my second name";

#a.save()

class PersonView extends Backbone.View
  el:  ".my_id",
  render: ->
    template = ich.person(@model.attributes)
    $(@el).append(template)

window.b = new PersonView({model: a})
window.b.render()
  


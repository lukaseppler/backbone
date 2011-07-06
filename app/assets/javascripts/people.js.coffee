# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

class Person extends Backbone.Model
  #url: "/people/" + @id,
  #name: "default name",
  #initialize: ->
  #  @people = new PersonCollection

class PersonCollection extends Backbone.Collection
  url: "/people",
  model: Person


$ ->
  collection = new PersonCollection
  collection.fetch({
    success: ->
      html = ich.people(collection)
      $("body").append(html)
  })




#collection.each (x) ->
#  alert x







#a = new Person({name: "Hans"})
#a.fetch()
#a.set({name: "my second name"})
#a.name = "my second name";
#a.save()


#class PersonView extends Backbone.View
#  el:  ".my_id",
#  render: ->
#    template = ich.person(@model.attributes)
#    $(@el).append(template)

#window.b = new PersonView({model: a})
#window.b.render()



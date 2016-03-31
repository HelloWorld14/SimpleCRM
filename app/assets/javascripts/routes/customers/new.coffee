# For more information see: http://emberjs.com/guides/routing/

SimpleCRM.CustomersNewRoute = Ember.Route.extend({

  model: ->
    @store.createRecord('customer')

  actions: {
    willTransition: ->
      @get('currentModel').unloadRecord()

    create: (customer) ->
      self = @

      success = ->
        self.transitionTo('customers.show', customer)

      failure = ->
        console.log("Validation fail")

      customer.save().then(success).catch(failure)
  }

})

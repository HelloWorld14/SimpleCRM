# For more information see: http://emberjs.com/guides/routing/

SimpleCRM.CustomersEditRoute = Ember.Route.extend({
  model: (params) ->
    @store.findRecord('customer', params.id)

  actions: {
    willTransition: ->
      @get('currentModel').rollbackAttributes()

    update: (customer) ->
      self = @

      success = ->
        self.transitionTo('customers.show', customer)

      failure = ->
        console.log('Validation fail')

      customer.save().then(success).catch(failure)
  }

})

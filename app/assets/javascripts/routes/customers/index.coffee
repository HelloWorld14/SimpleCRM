# For more information see: http://emberjs.com/guides/routing/

SimpleCRM.CustomersIndexRoute = Ember.Route.extend({
  model: ->
    @store.findAll('customer')

  actions: {
    destroy: (customer) ->
      customer.destroyRecord()
  }
})

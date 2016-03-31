# For more information see: http://emberjs.com/guides/routing/

SimpleCRM.CustomersShowRoute = Ember.Route.extend({
  model: (params) ->
    @store.findRecord('customer', params.id)
})

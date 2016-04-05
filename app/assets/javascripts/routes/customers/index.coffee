# For more information see: http://emberjs.com/guides/routing/

SimpleCRM.CustomersIndexRoute = Ember.Route.extend({
  model: ->
    @store.findAll('customer')

  actions: {
    destroy: (customer) ->
      @render('modals/confirm', {
        into: 'customers/index'
        outlet: 'modal'
        model: customer
      })

    hideModal: ->
      @disconnectOutlet({
        outlet: 'modal'
        parentView: 'customers/index'
      })

    confirmModal: (customer) ->
      customer.destroyRecord()
  }
})

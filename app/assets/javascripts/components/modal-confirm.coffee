# for more details see: http://emberjs.com/guides/components/

SimpleCRM.ModalConfirmComponent = Ember.Component.extend({
  actions: {
    cancel: ->
      @sendAction('hideModal')

    confirm: (record) ->
      @sendAction('destroyCustomer', record)
      @sendAction('hideModal')
  }
})


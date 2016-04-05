# for more details see: http://emberjs.com/guides/components/

SimpleCRM.ModalConfirmComponent = Ember.Component.extend({
  didInsertElement: ->
    self = @

    jQuery ->
      modal = self.set('modal', $('#modal-confirm'))

      modal.modal('show')
      modal.on('hidden.bs.modal', ->
        self.sendAction('hideModal')
      )



  actions: {
    confirm: (record) ->
      @sendAction('confirmModal', record)
      @sendAction('hideModal')

      modal = @get('modal')
      modal.modal('hide')
  }
})


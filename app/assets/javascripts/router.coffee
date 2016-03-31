# For more information see: http://emberjs.com/guides/routing/

SimpleCRM.Router.map ()->
  @route('customers', ->
    @route('new')
    @route('show', { path: '/:id' })
    @route('edit', { path: '/:id/edit'})
  )


# for more details see: http://emberjs.com/guides/models/defining-models/

SimpleCRM.Customer = DS.Model.extend({
  name: DS.attr('string')
  phone: DS.attr('string')
  email: DS.attr('string')
  created_at: DS.attr('string')
})

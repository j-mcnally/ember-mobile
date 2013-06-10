# this class will will provide a tabbar
class EmberMobile.TabItemView extends Ember.View
  content: null
  layoutName: "ember-mobile/tabitemview"
  classNames: ["tabitem"]
  classNameBindings: ["selected"]
  selected: (->
    resource = this.get('content.route').split(".")[0]
    resource == this.get('parentView.selected')
  ).property('item', 'parentView.selected').cacheable()
  click: ->
    @_context.namespace.Router.router.transitionTo(@get('content.route') + ".index")
    
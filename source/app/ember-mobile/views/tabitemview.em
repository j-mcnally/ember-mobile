# this class will will provide a tabbar
class EmberMobile.TabItemView extends Ember.View
  content: null
  layoutName: "ember-mobile/tabitemview"
  classNames: ["tabitem"]
  classNameBindings: ["selected"]
  selected: (->
    this.get('content') == this.get('parentView.selected')
  ).property('item', 'parentView.selected').cacheable()
  click: ->
    this.get('parentView').set('selected', this.get('content'))
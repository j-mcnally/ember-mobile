# this class will will provide a tabbar
class EmberMobile.TabbarControllerView extends Ember.View
  layoutName: "ember-mobile/tabbarcontrollerview"
  classNames: ["tabbarcontroller"]
  selected: (->
    states = this._context.namespace.Router.router.currentHandlerInfos;
    route = states[states.length-1].handler.routeName;
    route.split(".")[0]
  ).property('routeLastChange')
  routeLastChange: null,
  updateRoute: ->
    @set('routeLastChange', new Date())
  init: ->
    document.body.addEventListener('routeChanged', =>
      @updateRoute()
    )
    return @_super()

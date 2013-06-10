# this class will will provide a titlebar with view hierarchy tracking
class EmberMobile.NavigationControllerView extends Ember.View
  layoutName: "ember-mobile/navigationcontrollerview"
  classNames: ["navigationcontroller"]
  navigationTitle: (->
    states = @_context.namespace.Router.router.currentHandlerInfos;
    title = states[states.length-1].handler.controller.get('navigationTitle');
    return "Mobile" unless title?
    title
  ).property('routeLastChange')

  routeDepth: (->
    states = @_context.namespace.Router.router.currentHandlerInfos;
    parentName = @get('parentView.renderedName')
    rstates = states.slice(0).reverse()
    depth = 0;
    for state in rstates
      break if (state.name == parentName || state.name == "#{parentName}.index")
      depth++
    return depth

  ).property('routeLastChange')

  isRootView: (->
    @get('routeDepth') == 0
  ).property('routeDepth')


  routeLastChange: null,

  popViewController: ->
    states = @_context.namespace.Router.router.currentHandlerInfos;
    rstates = states.slice(0).reverse()
    #assume current view is last
    targetState = rstates[rstates.length-2].name
    try
      @_context.namespace.Router.router.transitionTo(targetState)
    catch ex
      @_context.namespace.Router.router.transitionTo("#{targetState}.index")

  updateRoute: ->
    @set('routeLastChange', new Date())
  init: ->
    context = this;
    document.body.addEventListener('routeChanged', ->
      unless context.isDestroyed
        context.updateRoute()
      else
        document.body.removeEventListener('routeChanged', arguments.callee)
    )
    return @_super()


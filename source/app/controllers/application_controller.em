class App.ApplicationController extends Ember.Controller
  updateTitle: (->
    
    document.body.dispatchEvent(new CustomEvent("routeChanged"))
  ).observes('currentPath')
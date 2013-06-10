App.Router.map ->
  @route 'index', { path: '/'}
  @resource 'friends', { path: '/friends'}, ->
    @route 'show'
    @route 'new'
  @resource 'favorites', { path: '/favorites'}, ->
    @route 'show'
    @route 'new'
  @resource 'songs', { path: '/songs'}, ->
    @route 'show'
    @route 'new'
  @resource 'pictures', { path: '/pictures'}, ->
    @route 'show'
    @route 'new'
    
# If using a tab controller you may want to redirect index to your first tab.  
class App.IndexRoute extends Ember.Route
  redirect: ->
    @transitionTo('friends.index')


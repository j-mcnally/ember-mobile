# this class will will provide a back btn
class EmberMobile.ToolbarBackButton extends EmberMobile.ToolbarButton
  classNames: ["em-ui-button em-ui-back"]
  click: ->
    @get('parentView').popViewController()
ready = ->
  $(window).scroll ->
      element = $('#page.top.btn')
      visible = element.is(':visible')
      height = $(window).scrollTop()
      if height > 200
        element.fadeIn() if !visible
      else
        element.fadeOut()
      $(document).on 'click', '#move-page-top', ->
        $('html,body').animate({scrollTop:0},'slow')
        
$(document).ready(ready)
$(document).on('page:load', ready)
# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

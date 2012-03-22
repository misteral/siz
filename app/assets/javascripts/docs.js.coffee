# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
$(document).ready ->
  $("#blabla a.add_fields").data("association-insertion-method", "after").data "association-insertion-node", "#target"

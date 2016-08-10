App.registerBehavior('LeftNavbar')

class Behavior.LeftNavbar
  constructor: ->
    $('.selectpicker').selectpicker()

    $(window).scroll ->
      $('#filter').css({
        'top': $(this).scrollTop()
    })

    $('#clear').click (e) ->
      e.preventDefault()
      $('.selectpicker').selectpicker('deselectAll')

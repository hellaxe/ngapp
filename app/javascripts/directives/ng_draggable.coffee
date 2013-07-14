myApp.directive("ngDraggable", () ->
  (scope, element, attr) ->

    move = (event) ->
      element[0].style.top = event.y - 15 + "px"
      element[0].style.left = event.x - 20 + "px"

    drop = (event) ->
      document.removeEventListener('mousemove', move)
      document.removeEventListener('mouseup', drop)
      element[0].style.position = "relative"
      element[0].style.zIndex = 1;
      $('table tbody').append(element[0])
      $('body').removeClass('no-select')

    element.bind('mousedown', () ->
      element[0].style.zIndex = 200;
      element[0].style.position = "absolute"
      $('body').addClass('no-select')
      element[0].remove()
      $('body').append(element[0])
      document.addEventListener('mousemove', move)
      document.addEventListener('mouseup', drop)
    )

)
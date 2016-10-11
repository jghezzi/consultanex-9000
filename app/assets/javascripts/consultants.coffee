$ ->
  $('#1').hover (event) ->
    event.preventDefault()
    $('#hider').velocity({ opacity: 1, top: "50%" })
    return
  return
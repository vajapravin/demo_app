centerPopup = ->
  windowWidth = document.documentElement.clientWidth
  windowHeight = document.documentElement.clientHeight
  popupHeight = $("#myPopup").height()
  popupWidth = $("#myPopup").width()
  $("#myPopup").css
    position: "absolute"
    top: windowHeight / 2 - popupHeight / 2
    left: windowWidth / 2 - popupWidth / 2

  $("#backgroundPopup").css height: windowHeight
loadPopup = ->
  if popupStatus is 0
    $("#backgroundPopup").css opacity: "0.7"
    $("#backgroundPopup").fadeIn "slow"
    $("#myPopup").fadeIn "slow"
    popupStatus = 1
disablePopup = ->
  if popupStatus is 1
    $("#backgroundPopup").fadeOut "slow"
    $("#myPopup").fadeOut "slow"
    popupStatus = 0
$(document).ready ->
  $("#displaypopup").click ->
    centerPopup()
    loadPopup()

  $("#popupClose").click ->
    disablePopup()

  $("#backgroundPopup").click ->
    disablePopup()

  $(document).keypress (e) ->
    disablePopup()  if e.keyCode is 27 and popupStatus is 1
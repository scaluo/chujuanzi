$(document).ready ->
  $('#btnNew1').attr 'data-target','#singleModal'
  $('#btnSingle').on 'click',->
    $('#singleFm').submit()

  $('#btnNew2').attr 'data-target','#multiModal'
  $('#btnMulti').on "click",->
    $('#multiFm').submit()

  $('#btnNew3').attr 'data-target','#yesnoModal'
  $('#btnYesno').on 'click',->
    $('#yesnoFm').submit()

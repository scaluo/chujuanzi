$(document).ready(function(){
    $('#btnNew1').attr('data-target','#singleModal');
    $('#btnSingle').on("click",function(){
      $('#singleFm').submit();
    });

    $('#btnNew2').attr('data-target','#multiModal');
    $('#btnMulti').on("click",function(){
      $('#multiFm').submit();
    });

    $('#btnNew3').attr('data-target','#yesnoModal');
    $('#btnYesno').on("click",function(){
      $('#yesnoFm').submit();
    });
}
);

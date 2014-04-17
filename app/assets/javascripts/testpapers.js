$(document).ready(function(){
    $('#btnNew1').attr('data-target','#singleModal');
    $('#btnSingle').on("click",function(){
      $('#singleFm').submit();
    });
}
);

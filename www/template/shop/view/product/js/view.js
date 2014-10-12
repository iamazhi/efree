$(document).ready(function()
{
    $("input[name='amount']").change(function(){
      var amount = $('input[name="amount"]').val();
      var stock  = $('input[name="amount"]').data('stock');
      if(amount > stock) $("input[name='amount']").val(1);
    });

    $('#downNumber, #upNumber').click(function(){
      var number = $('input[name="number"]').val();
      var stock  = $('input[name="number"]').data('stock');
      if($(this).attr('id') == 'downNumber' && number > 1)   number--;
      if($(this).attr('id') == 'upNumber' && number < stock) number++;
      $("input[name='number']").val(number);
    });

    $('#addOrder').click(function(){
      $('form#shopForm').attr('action', $(this).data('action'));
      $('form#shopForm').submit();
    });

    $('#addCart').click(function(){
      $('form#shopForm').attr('id', 'ajaxForm');
      $('form#ajaxForm').attr('action', $(this).data('action'));
      $('form#ajaxForm').submit();
    });

   	$('.little-image').mouseover(function()
    {
        $('.product-image.media-wrapper img').attr('src', $(this).find('img').attr('src').replace('s_', 'm_'));
        return false;
    });

    $('#commentBox').load( createLink('message', 'comment', 'objectType=article&objectID=' + v.productID) );  
})

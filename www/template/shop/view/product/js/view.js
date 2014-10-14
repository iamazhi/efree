$(document).ready(function()
{
    $("input[name='number']").change(function(){
      var $number = $(this);
      var value   = $number.val();
      var amount  = $number.data('amount');
      if(value > amount || !/^[0-9]*[1-9][0-9]*$/.test(value)) $number.val(1);
    });

    $('#downNumber, #upNumber').click(function(){
      var number = $('input[name="number"]').val();
      var amount = $('input[name="number"]').data('amount');
      if($(this).attr('id') == 'downNumber' && number > 1)   number--;
      if($(this).attr('id') == 'upNumber' && number < amount) number++;
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

$(document).ready(function()
{
    $("input[name='amount']").change(function(){
      var amount = $('input[name="amount"]').val();
      var stock  = $('input[name="amount"]').data('stock');
      if(amount > stock) $("input[name='amount']").val(1);
    });

    $('#downAmount, #upAmount').click(function(){
      var amount = $('input[name="amount"]').val();
      var stock  = $('input[name="amount"]').data('stock');
      if($(this).attr('id') == 'downAmount' && amount > 1)   amount--;
      if($(this).attr('id') == 'upAmount' && amount < stock) amount++;
      $("input[name='amount']").val(amount);
    });

   	$('.little-image').mouseover(function()
    {
        $('.product-image.media-wrapper img').attr('src', $(this).find('img').attr('src').replace('s_', 'm_'));
        return false;
    });

    $('#commentBox').load( createLink('message', 'comment', 'objectType=article&objectID=' + v.productID) );  
})

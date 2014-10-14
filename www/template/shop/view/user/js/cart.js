$(document).ready(function()
{
    $("input[name^='number']").change(function(){
      var $number = $(this);
      var value   = $number.val();
      var number  = $number.data('number');
      var amount  = $number.data('amount');
      if(value > amount || !/^[0-9]*[1-9][0-9]*$/.test(value)) $number.val(number);

      var product = $number.data('product');
      updateTotal(product);
    });

    var updateTotal = function(product){
      var $number = $("#product" + product + " input[name^='number']");
      var price   = $number.data('price');
      var number  = $number.val();
      var total   = (number * price).toFixed(2);
      $("#product" + product + " .total").text(total);
    };

    $('.downNumber').click(function(){
      var $number = $(this).parent().find('input');
      var amount  = $number.data('amount');
      var number  = $number.val();
      if(number-- > 1) $number.val(number);

      var product = $number.data('product');
      updateTotal(product);
    });

    $('.upNumber').click(function(){
      var $number = $(this).parent().find('input');
      var amount = $number.data('amount');
      var number = $number.val();
      if(number++ < amount) $number.val(number);

      var product = $number.data('product');
      updateTotal(product);
    });

})

$(document).ready(function()
{
    scope = "#cartList";
    summary();

    $(scope + " tbody tr").click(choseItem);
    $("input[name^='number']").change(changeNumber);
    $('.downNumber').click(downNumber);
    $('.upNumber').click(upNumber);
    $('input:checkbox').click(function(){ summary(scope); });
    $('#selectAll').click(function(){ selectAll(scope); });
    $('#selectReverse').click(function(){ selectReverse(scope); });
});

function choseItem(){
  return;
  var $tr       = $(this);
  var $checkbox = $tr.find('input:checkbox');
  if($checkbox.prop('checked')) {
    $checkbox.prop('checked', false);
  }else{
    $checkbox.prop('checked', true);
  }
  summary();
}

function changeNumber(){
  var $number = $(this);
  var value   = $number.val();
  var number  = $number.data('number');
  var amount  = $number.data('amount');
  if(value > amount || !/^[0-9]*[1-9][0-9]*$/.test(value)) $number.val(number);

  var product = $number.data('product');
  updateTotal(product);
}

function upNumber(){
  var $number = $(this).parent().find('input');
  var amount = $number.data('amount');
  var number = $number.val();
  if(number++ < amount) $number.val(number);

  var product = $number.data('product');
  updateTotal(product);
}

function downNumber(){
  var $number = $(this).parent().find('input');
  var amount  = $number.data('amount');
  var number  = $number.val();
  if(number-- > 1) $number.val(number);

  var product = $number.data('product');
  updateTotal(product);
}

function updateTotal(product){
  var $number = $("#product" + product + " input[name^='number']");
  var price   = $number.data('price');
  var number  = $number.val();
  var total   = (number * price).toFixed(2);
  $("#product" + product + " .total").text(total);
  summary();
};

function  selectAll()
{
  $(scope + ' input:checkbox').each(function() { $(this).prop("checked", true);});
  summary();
}

function selectReverse()
{
  $(scope + ' input:checkbox').each(function() { $(this).prop("checked", !$(this).prop("checked"));});
  summary();
}

function summary()
{
  var pageNumber = 0;
  var pagePrice  = 0;
  $(scope + ' input:checkbox').each(function() { 
    var $checkbox = $(this);
    if($checkbox.prop("checked") == true) {
      pageNumber++;
      var total = $checkbox.parent().parent().find('.total').text();
      pagePrice += parseFloat(total);
    }
  });

  pagePrice = pagePrice.toFixed(2);
  $("#pageNumber").text(pageNumber);
  $("#pagePrice").text(pagePrice);

  setButtonStatus(pageNumber);
};

function setButtonStatus(pageNumber){
  if(pageNumber) return $("#submit").prop("disabled", false);
  return $("#submit").prop("disabled", true);
}

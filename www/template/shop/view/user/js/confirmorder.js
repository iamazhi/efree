$(document).ready(function()
{
  $('.remove-action').click(removeConsignee);
  $('.consignee-box').click(function(e){ choseConsignee(e, $(this)) } );
});

function removeConsignee(){
  event.preventDefault();
  var $href = $(this).attr('href');
  var $consigneeid  = $(this).data('consigneeid');
  var $consigneeBox = $('#consignee' + $consigneeid);
  if($consigneeBox.attr('class').indexOf('cur-box') > -1) {
    return bootbox.alert("不能删除已经选中的收件人信息");
  }

  bootbox.confirm(v.lang.confirmDelete, function(result){
    if(result){
      $.getJSON($href, function(data){
        if(data.result == 'success'){
          $('#consignee' + $consigneeid).parent().remove();
          return bootbox.alert('成功删除该收件人');
        }
      });
    }
  });
}

function choseConsignee(e, $cur)
{
  if(e.target.tagName == 'I') return;
  $('.consignee-box').find('.mix i.icon-ok').remove();
  $('.consignee-box').removeClass('cur-box');
  $cur.addClass('cur-box');
  $cur.find('.mix').append('<i class="pull-right icon-ok text-lg"></i>');

  var $confirmConsignee = $cur.data('consigneeid');
  $('#confirmConsignee').val($confirmConsignee);
}

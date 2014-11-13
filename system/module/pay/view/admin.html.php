<?php include '../../common/view/header.admin.html.php';?>
<div class='panel'>
  <div class='panel-heading'><strong><i class='icon-envelope'></i> <?php echo $lang->mail->common;?> <i class='icon-arrow-right'></i> <?php echo $lang->mail->test; ?></strong></div>
  <div class='panel-body'>
    <form method='post' id='ajaxForm' class='form-inline'>
      <table class='table table-form'>
        <tr>
          <th class='col-xs-2'><?php echo $lang->pay->partner;?></th> 
          <td class='col-xs-6'><?php echo html::input('partner', $partner, "class='form-control'");?></td><td></td>
        </tr>
        <tr>
          <th class='col-xs-2'><?php echo $lang->pay->key;?></th> 
          <td class='col-xs-6'><?php echo html::input('key', $key, "class='form-control'");?></td><td></td>
        </tr>
        <tr>
          <th class='col-xs-2'><?php echo $this->lang->pay->notify_url;?></th> 
          <td class='col-xs-6'><?php echo html::input('notify_url', '', "class='form-control'");?></td><td></td>
        </tr>
        <tr>
          <th class='col-xs-2'><?php echo $lang->pay->return_url;?></th> 
          <td class='col-xs-6'><?php echo html::input('return_url', '', "class='form-control'");?></td><td></td>
        </tr>

        <tr>
          <th></th>
          <td colspan='2'>
            <?php echo html::submitButton();?>
          </td>
        </tr>
      </table>
    </form>
  </div>
</div>
<?php include '../../common/view/footer.admin.html.php';?>

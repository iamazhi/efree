<?php include TPL_ROOT . 'common/header.html.php';?>
<div class='row'>
  <?php include './side.html.php';?>
  <form method='post' action='<?php echo $this->createLink('order', 'create', 'from=cart');?>'>
    <div class='col-md-10'>

      <div class='panel'>
        <div class='panel-heading'><strong>确认收货地址</strong></div>
        <?php $consignees = $this->loadModel('consignee')->getList(); ?>
        <div class='row' id='consignees'>
          <?php $consigneeID = 0; foreach($consignees as $consignee):?>
          <div class="col-md-3 cell">
            <div class="consignee-box <?php if($consignee->default) echo 'cur-box';?>" id='<?php echo 'consignee' . $consignee->id;?>' data-consigneeid="<?php echo $consignee->id; ?>">
              <a class="remove-action" data-consigneeid="<?php echo $consignee->id; ?>" href="<?php echo $this->createLink('consignee', 'delete', "id=$consignee->id")?>"><i class="icon-remove"></i></a>
              <div class="title"><?php echo $consignee->name . ' ' . $consignee->mobile . ' (收)'; ?></div>
              <div class="desc"><?php echo $consignee->address . ' (' . $consignee->zipcode . ')'; ?></div>
              <div class="mix">
                <i class="pull-left icon-edit edit-action"></i>
                <?php if($consignee->default) echo " 默认地址"; ?>
                <?php if($consignee->default): $consigneeID = $consignee->id;?>
                <i class="pull-right icon-ok text-lg"></i>
                <?php endif;?>
              </div>
            </div>
          </div>
          <?php endforeach;?>
        </div>
      </div>

      <div class='panel'>
        <div class='panel-heading'><strong>确认订单信息</strong></div>
        <table class="table">
          <thead>
            <tr>
              <th>商品信息</th>
              <th>单价</th>
              <th>数量</th>
              <th>小计</th>
            </tr>
          </thead>
          <tbody>
          <?php foreach($cartList as $cart):?>
          <?php $product = $cart->productInfo; ?>
            <input type='hidden' name='cartIDList[<?php echo $cart->id;?>]' value='<?php echo $numberList[$cart->id];?>' /></td>
            <tr id=<?php echo "product" . $cart->product?>>
              <td>
                <?php if(!empty($product->image)): ?>
                <?php $title = $product->image->primary->title ? $product->image->primary->title : $cart->name;?>
                <span class='media' style='background-image: url(<?php echo $product->image->primary->smallURL; ?>); background-iamge:none\0;'><?php echo html::image($product->image->primary->smallURL, "title='{$title}' alt='{$cart->name}'"); ?></span>
                <?php endif;?>
                <span><?php echo html::a(helper::createLink('product', 'view', "id=$cart->product"), $product->name, 'target=_blank');?></span>
              </td>
              <td>
                <small class='text-muted'><?php echo $this->config->product->currency;?></small>
                <span class='price'><?php echo $product->finalPrice;?></span>
              </td>
              <td class='w-100px'><span class="number"><span class='number'><?php echo $numberList[$cart->id];?></span></td>
              <td class='w-100px'>
                 <small class='text-muted'><?php echo $this->config->product->currency;?></small>
                 <span class='total text-warning'><?php echo sprintf("%.2f", $product->finalPrice * $numberList[$cart->id]);?></span>
              </td>
            </tr>
          <?php endforeach;?>
          </tbody>
          <tfoot>
            <tr>
              <td colspan=6> 
                <div class='pull-right'>
                  实付款:<?php echo $this->config->product->currency;?><strong class='text-warning' id='pagePrice'><?php echo $confirmPrice; ?></strong>
                  <?php echo html::submitButton('提交订单', 'btn btn-danger btn-lg') . html::hidden('cost', $confirmPrice); ?>
                  <?php echo html::hidden('consigneeID', $consigneeID); ?>
                </div>
              </td>
            </tr>
          </tfoot>
        </table>
      </div>
    </div>
  </form>
</div>
<?php include TPL_ROOT . 'common/footer.html.php';?>

<?php include TPL_ROOT . 'common/header.html.php';?>
<div class='row'>
  <?php include './side.html.php';?>
  <div class='col-md-10' id='orderList'>

    <?php foreach($orders as $order):?>
    <div class='panel'>
      <div class='panel-heading'><?php echo $order->addedDate;?></div>
      <table class="table">
        <tbody>
          <?php $count = count($order->details); $index = 0;?>
          <?php foreach($order->details as $detail):?>
          <?php $product = $detail->productInfo; $index++; ?>
          <tr id=<?php echo "product" . $detail->product?>>
            <td>
              <?php if(!empty($product->image)): ?>
              <?php $title = $product->image->primary->title ? $product->image->primary->title : $cart->name;?>
              <span class='media' style='background-image: url(<?php echo $product->image->primary->smallURL; ?>);'><?php echo html::image($product->image->primary->smallURL, "title='{$title}' alt='{$cart->name}'"); ?></span>
              <?php endif;?>
              <span><?php echo html::a(helper::createLink('product', 'view', "id=$cart->product"), $product->name, 'target=_blank');?></span>
            </td>
            <td class='w-100px'>
              <small class='text-muted'><?php echo $this->config->product->currency;?></small>
              <span class='price'><?php echo $product->finalPrice;?></span>
            </td>
            <td class='w-100px'><span class="number"><span class='number'><?php echo $detail->number;?></span></td>
            <?php if($index == 1):?>
            <td class='w-100px total' <?php if($count > 1) echo "rowspan='$count'"; ?>>
              <small class='text-muted'><?php echo $this->config->product->currency;?></small>
             <span class='total text-warning'><?php echo $order->cost;?></span>
            </td>
            <td class='w-120px actions' <?php if($count > 1) echo "rowspan='$count'"; ?>>
              <?php if($order->status == 'unpaid') echo html::a($this->createLink('order', 'pay', "orderID=$order->id"), "付款", "class='btn btn-warning'");?>
            </td>
            <?php endif;?>
          </tr>
          <?php endforeach;?>
        </tbody>
      </table>
    </div>
    <?php endforeach;?>
    <div><?php $pager->show('right', 'short');?></div>

  </div>
</div>
<?php include TPL_ROOT . 'common/footer.html.php';?>

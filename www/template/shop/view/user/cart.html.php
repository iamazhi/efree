<?php include TPL_ROOT . 'common/header.html.php';?>
<div class='row'>
  <?php include './side.html.php';?>
  <div class='col-md-10'>
    <table class="table table-bordered table-hover" id="cartList">
      <thead>
        <tr>
          <th></th>
          <th>商品信息</th>
          <th>单价</th>
          <th>数量</th>
          <th>金额</th>
          <th>操作</th>
        </tr>
      </thead>
      <tbody>
      <?php foreach($cartList as $cart):?>
      <?php $product = $cart->productInfo; ?>
      <?php $price = $product->promotion ? $product->promotion : $product->price;?></td>
        <tr id=<?php echo "product" . $cart->product?>>
          <td><input type='checkbox' name='cartIDList[<?php echo $cart->id;?>]' value='<?php echo $cart->id;?>' /></td>
          <td>
            <?php if(!empty($product->image)): ?>
            <?php $title = $product->image->primary->title ? $product->image->primary->title : $cart->name;?>
            <span class='media' style='background-image: url(<?php echo $product->image->primary->smallURL; ?>); background-iamge:none\0;'><?php echo html::image($product->image->primary->smallURL, "title='{$title}' alt='{$cart->name}'"); ?></span>
            <?php endif;?>
            <span><?php echo html::a(helper::createLink('product', 'view', "id=$cart->product"), $product->name, 'target=_blank');?></span>
          </td>
          <td>
             <small class='text-muted'><?php echo $this->config->product->currency;?></small>
            <span class='price'><?php echo $price;?></span>
          </td>
          <td class='w-130px'>
            <div class="input-group"> 
              <span class="input-group-addon downNumber">-</span> 
              <?php echo html::input("number[$cart->id]", $cart->number, "class='form-control' data-amount=$product->amount data-number=$cart->number data-price=$price data-product=$cart->product");?>
              <span class="input-group-addon upNumber">+</span>
            </div>
          </td>
          <td class='w-100px'>
             <small class='text-muted'><?php echo $this->config->product->currency;?></small>
             <span class='total text-warning'><?php echo $price * $cart->number;?></span>
           </td>
          <td class='action'><?php echo html::a($this->createLink('cart', 'delete', "cartID=$cart->id"), $lang->delete, "class='deleter'"); ?> </td>
        </tr>
      <?php endforeach;?>
      </tbody>
      <tfoot>  
        <tr>
          <td colspan=6> 
            <div class='pull-left'>
              <div class='btn-group'>
                <?php echo html::a("javascript:selectAll()",     $lang->selectAll, "class='btn'"); ?>
                <?php echo html::a("javascript:selectReverse()", $lang->selectReverse, "class='btn'"); ?>
              </div>
            </div>
            <div class='pull-right'>已选商品100件，共计(不含运费):￥1000 </div>
          </td>
        </tr>
      </tfoot>
    </table>
  </div>
</div>
<?php include TPL_ROOT . 'common/footer.html.php';?>

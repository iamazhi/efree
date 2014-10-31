<?php
function getByID($productID, $replaceTag = true)
{   
    /* Get product self. */
    $product = $this->dao->select('*')->from(TABLE_PRODUCT)->where('id')->eq($productID)->fetch();
    if(!$product) return false;

    /* Add link to content if necessary. */
    if($replaceTag) $product->content = $this->loadModel('tag')->addLink($product->content);

    /* Get it's categories. */
    $product->categories = $this->dao->select('t1.*')
        ->from(TABLE_CATEGORY)->alias('t1')
        ->leftJoin(TABLE_RELATION)->alias('t2')->on('t2.category = t1.id')
        ->where('t2.type')->eq('product')
        ->andWhere('t2.id')->eq($productID)
        ->fetchAll('id');

    $product->finalPrice = $product->promotion ? $product->promotion : $product->price;

    /* Get product path to highlight main nav. */
    $path = '';
    foreach($product->categories as $category) $path .= $category->path;
    $product->path = explode(',', trim($path, ','));

    /* Get product attributes. */
    $product->attributes = $this->getAttributesByID($productID);

    /* Get it's files. */
    $product->files = $this->loadModel('file')->getByObject('product', $productID);

    $product->images = $this->file->getByObject('product', $productID, $isImage = true );

    $product->image = new stdclass();
    $product->image->list    = $product->images;
    $product->image->primary = !empty($product->image->list) ? $product->image->list[0] : '';

    return $product;
}   


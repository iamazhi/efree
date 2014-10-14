<?php
class cartModel extends model
{
    public function create($productID)
    {
        $now = helper::now();
        $cart = fixer::input('post')
            ->join('categories', ',')
            ->stripTags('content,desc', $this->config->allowedTags->admin)
            ->setDefault('price', 0)
            ->setDefault('number', 0)
            ->setDefault('status', 'normal')
            ->setDefault('product', $productID)
            ->add('addedBy', $this->app->user->account)
            ->add('addedDate', $now)
            ->get();

        $oldCart = $this->dao->select('*')->from(TABLE_CART)->where('product')->eq($cart->product)->andWhere('addedBy')->eq($this->app->user->account)->fetch();
        if($oldCart){
            $cart->number += $oldCart->number;
            $this->dao->update(TABLE_CART)->data($cart)->where('id')->eq($oldCart->id)->exec();
            return $oldCart->id;
        }else{
            $this->dao->insert(TABLE_CART)->data($cart)->autoCheck()->exec();
            return $this->dao->lastInsertID();
        }
    }

    public function getList($orderBy = 'id_desc', $pager = null)
    {
        $cartList = $this->dao->select('*')->from(TABLE_CART)
            ->where('addedBy')->eq($this->app->user->account)
            ->andWhere('status = "normal"')
            ->orderBy($orderBy)
            ->page($pager)
            ->fetchAll('id');

        if(!$cartList) return array();

        foreach($cartList as $cart) $cart->productInfo = $this->loadModel('product')->getByID($cart->product);
        return $cartList;
    }

    public function delete($cartID)
    {
        $this->dao->update(TABLE_CART)->set('status')->eq('delete')->where('id')->eq($cartID)->exec();
        return !dao::isError();
    }
}

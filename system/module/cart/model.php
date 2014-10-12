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
            ->setDefault('product', $productID)
            ->add('addedBy', $this->app->user->account)
            ->add('addedDate', $now)
            ->get();

        $this->dao->replace(TABLE_CART)->data($cart)->autoCheck()->exec();
        return $this->dao->lastInsertID();
    }

    public function getList($orderBy = 'id_desc', $pager = null)
    {
        return $this->dao->select('t1.*, t2.name, t2.amount')->from(TABLE_CART)->alias('t1')
            ->leftJoin(TABLE_PRODUCT)->alias('t2')->on('t1.product = t2.id')
            ->where('t1.addedBy')->eq($this->app->user->account)
            ->orderBy('t1.' . $orderBy)
            ->page($pager)
            ->fetchAll('id');
    }
}

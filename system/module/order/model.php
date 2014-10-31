<?php
class orderModel extends model
{
    public function getList($orderIDList = array(), $orderBy = 'id_desc', $pager = null)
    {
        $orders = $this->dao->select('*')->from(TABLE_ORDER)
            ->where('addedBy')->eq($this->app->user->account)
            ->beginIF($orderIDList)
            ->andWhere('id')->in($orderIDList)
            ->fi()
            ->orderBy($orderBy)
            ->page($pager)
            ->fetchAll('id');

        $detailGroup = $this->dao->select('*')->from(TABLE_ORDER_DETAIL)
            ->where('`order`')->in(array_keys($orders))
            ->fetchGroup('order', 'id');

        foreach($detailGroup as $details)
        {
            foreach($details as $detail)
            {
                $detail->productInfo = $this->loadModel('product')->getByID($detail->product);
            }
        }

        foreach($orders as $orderID => $order) $order->details = $detailGroup[$orderID];

        return $orders;
    }

    public function create()
    {
        // create order
        $cartList = $this->loadModel('cart')->getList(array_keys($cartIDList));
        $cartIDList  = $this->post->cartIDList;
        $consigneeID = $this->post->consigneeID;
        $cost        = $this->post->cost;

        $order            = new stdClass();
        $order->status    = 'unpaid';
        $order->addedBy   = $this->app->user->account;
        $order->addedDate = helper::now();
        $order->cost      = $cost;
        $this->dao->insert(TABLE_ORDER)->data($order)->exec();
        if(dao::isError()) return dao::getError();

        // create order detail
        $orderID  = $this->dao->lastInsertID();
        $cartList = $this->loadModel('cart')->getList(array_keys($cartIDList));
        foreach($cartIDList as $cartID => $number)
        {
            $cart    = $cartList[$cartID];
            $product = $cartList[$cartID]->productInfo;

            $detail          = new stdClass();
            $detail->order   = $orderID;
            $detail->price   = $product->finalPrice;
            $detail->product = $product->id;
            $detail->number  = $number;
            $this->dao->insert(TABLE_ORDER_DETAIL)->data($detail)->exec();
            if(dao::isError()) return dao::getError();
            $this->dao->delete()->from(TABLE_CART)->where('id')->eq($cartID)->exec();
        }
    }
}

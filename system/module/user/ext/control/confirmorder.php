<?php
include '../../control.php';
class myUser extends user
{
    public function confirmOrder($from = 'cart')
    {
        if($_POST)
        {
            $this->view->cartList     = $this->loadModel('cart')->getList($_POST['cartIDList']);
            $this->view->numberList   = $_POST['numberList'];
            $this->view->priceList    = $_POST['priceList'];
            $this->view->confirmPrice = $_POST['confirmPrice'];
            $this->display();
        }
    }
}

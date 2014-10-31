<?php
include '../../control.php';
class myUser extends user
{
    public function cart($pageID = 1)
    {
        $this->loadModel('cart');
        $this->app->loadClass('pager', $static = true);
        $pager = new pager(0, $this->config->cart->recPerPage, $pageID);

        $this->view->cartList = $this->loadModel('cart')->getList(array(), 'id_desc', $pager);
        $this->display();
    }
}

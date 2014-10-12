<?php
include '../../control.php';
class myUser extends user
{
    public function cart($pageID = 1)
    {
        $this->app->loadClass('pager', $static = true);
        $pager = new pager(0, $this->config->cart>recPerPage, $pageID);

        $this->view->cartList = $this->loadModel('cart')->getList();
        $this->display();
    }
}

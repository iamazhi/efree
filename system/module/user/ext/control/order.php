<?php
include '../../control.php';
class myUser extends user
{
    public function order($pageID = 1)
    {
        $this->loadModel('order');
        $this->app->loadClass('pager', $static = true);
        $pager = new pager(0, $this->config->order->recPerPage, $pageID);

        $this->view->orders = $this->loadModel('order')->getList(array(), 'id_desc', $pager);
        $this->view->pager  = $pager;
        $this->display();
    }
}

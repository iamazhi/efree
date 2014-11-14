<?php
class pay extends control
{
    public function admin()
    {
        if(!empty($_POST))
        {
            $partner    = $_POST['partner'];
            $key        = $_POST['key'];
            $notify_url = $_POST['notify_url'];
            $return_url = $_POST['return_url'];
            $this->loadModel('setting')->setItem('system.pay.alipay.partner', $partner);
            $this->loadModel('setting')->setItem('system.pay.alipay.key', $key);
            $this->loadModel('setting')->setItem('system.pay.alipay.notify_url', $notify_url);
            $this->loadModel('setting')->setItem('system.pay.alipay.return_url', $return_url);
            if(dao::isError()) $this->send(array('result' => 'fail', 'message' => dao::getError()));
            $this->send(array('result' => 'success', 'message' => $this->lang->saveSuccess));
        }

        $partner             = $this->loadModel('setting')->getItem('owner=system&module=pay&section=alipay&key=partner');
        $key                 = $this->loadModel('setting')->getItem('owner=system&module=pay&section=alipay&key=key');
        $notify_url          = $this->loadModel('setting')->getItem('owner=system&module=pay&section=alipay&key=notify_url');
        $return_url          = $this->loadModel('setting')->getItem('owner=system&module=pay&section=alipay&key=return_url');

        $this->view->notify_url = $notify_url;
        $this->view->return_url = $return_url;
        $this->view->partner    = $partner;
        $this->view->key        = $key;
        $this->display();
    }

    public function go($orderID)
    {
        $type = 'alipay';
        $order = $this->loadModel('order')->getByID($orderID);
        $this->loadModel($type)->pay($order);
    }
}

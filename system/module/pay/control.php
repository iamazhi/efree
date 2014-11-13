<?php
class pay extends control
{
    public function admin()
    {
        if(!empty($_POST))
        {
            $partner = $_POST['partner'];
            $key     = $_POST['key'];
            $this->loadModel('setting')->setItem('system.pay.alipay.partner', $partner);
            $this->loadModel('setting')->setItem('system.pay.alipay.key', $key);
            if(dao::isError()) $this->send(array('result' => 'fail', 'message' => dao::getError()));
            $this->send(array('result' => 'success', 'message' => $this->lang->saveSuccess));
        }
        $partner = $this->loadModel('setting')->getItem('owner=system&module=pay&section=alipay&key=partner');
        $key     = $this->loadModel('setting')->getItem('owner=system&module=pay&section=alipay&key=key');
        $this->view->partner = $partner;
        $this->view->key     = $key;
        $this->display();
    }

    public function alipay()
    {
    }
}

<?php
class cart extends control
{

    public function __construct()
    {
        parent::__construct();
        $this->loadModel('user');
    }

    public function index($pageID = 1)
    {
    }

    public function add($productID)
    {
        if($_POST)
        {
            $cartID = $this->cart->create($productID);
            if(dao::isError()) $this->send(array('result' => 'fail', 'message' => dao::getError()));
            $this->send(array('result' => 'success', 'message' => $this->lang->saveSuccess, 'locate' => helper::createLink('product', 'view', "productID=$productID")));
        }

        $this->send(array('result' => 'fail', 'message' => "fail"));
    }

    public function delete($cartID)
    {
        if($this->cart->delete($cartID)) $this->send(array('result' => 'success'));
        $this->send(array('result' => 'fail', 'message' => dao::getError()));
    }
}

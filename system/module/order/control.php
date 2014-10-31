<?php
/**
* @file control.php
* @brief 
* @author Azhi, chencongzhi520@gmail.com
* 1.0
* @date 2014-10-16
*/
class order extends control
{
    /**
        * @brief add 
        *
        * @return 
     */
    public function create()
    {
        if(!empty($_POST))
        {
            $this->order->create();
            $this->locate(helper::createLink('user', 'order'));
        }
    }

    public function pay($orderID)
    {
        echo $orderID;
    }
}

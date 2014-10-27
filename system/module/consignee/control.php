<?php
/**
* @file control.php
* @brief 
* @author Azhi, chencongzhi520@gmail.com
* 1.0
* @date 2014-10-16
*/
class consignee extends control
{
    public function delete($consigneeID)
    {
        if($this->consignee->delete($consigneeID)) $this->send(array('result' => 'success'));
        $this->send(array('result' => 'fail', 'message' => dao::getError()));
    }
}

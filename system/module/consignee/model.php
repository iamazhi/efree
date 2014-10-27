<?php
class consigneeModel extends model
{
    public function getList($account = '')
    {
        if(!$account) $account = $this->app->user->account;
        return $this->dao->select('*')->from(TABLE_CONSIGNEE)->where('account')->eq($account)->fetchAll();
    }
}

<?php
class consigneeModel extends model
{
    public function getList($account = '')
    {
        if(!$account) $account = $this->app->user->account;
        return $this->dao->select('*')->from(TABLE_CONSIGNEE)->where('account')->eq($account)->andWhere('deleted')->eq(0)->fetchAll();
    }

    public function delete($consigneeID)
    {
        $this->dao->update(TABLE_CONSIGNEE)->set('deleted')->eq('1')->where('id')->eq($consigneeID)->exec();
        return !dao::isError();
    }

}

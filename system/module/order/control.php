<?php
class order extends control
{
    public function add(){
        $this->locate(helper::createLink('user', 'order'));
    }
}

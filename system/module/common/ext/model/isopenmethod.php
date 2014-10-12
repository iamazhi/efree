<?php 
function isOpenMethod($module, $method)
{
    if($module == 'user'and strpos(',login|logout|deny|resetpassword|checkresetkey', $method)) return true;
    if($module == 'wechat' and $method == 'response') return true;

    if($this->loadModel('user')->isLogon()) return true;

    return false;
}

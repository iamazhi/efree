<?php 
function printTopNav()
{
    if(!commonModel::isAvailable('user')) return '';

    global $app;
    if($app->session->user->account != 'guest')
    {
        $cartList = $this->loadModel('cart')->getList();
        printf('<span class="login-msg">' . $app->lang->welcome . '</span>', html::a(helper::createLink('user', 'control'), $app->session->user->realname));
        echo "<span id='msgBox' class='hiding'></span>";
        echo html::a(helper::createLink('user', 'cart'),   $app->lang->cart . "<strong class='text-danger'>" . count($cartList) . "</strong>");
        echo html::a(helper::createLink('user', 'order'),  $app->lang->order);
        echo html::a(helper::createLink('user', 'logout'), $app->lang->logout);
    }    
    else
    {
        echo html::a(helper::createLink('user', 'login'), $app->lang->login);
        echo html::a(helper::createLink('user', 'register'), $app->lang->register);
    }    
}

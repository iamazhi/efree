<?php
$config->alipay->payGW     = 'https://mapi.alipay.com/gateway.do?';
$config->alipay->checkGW   = "http://notify.alipay.com/trade/notify_query.do?";
$config->alipay->service   = 'create_direct_pay_by_user';
$config->alipay->signType  = 'MD5';
$config->alipay->payType   = 1;
$config->alipay->charset   = 'utf-8';
$config->alipay->method    = 'get';

$config->alipay->pid       = '2088411689960385';
$config->alipay->key       = 'poqk38r6zx23so199ed20ix9mev5xwot';
$config->alipay->email     = 'wooyou003@ibignose.com';
$config->alipay->notifyURL = 'http://127.0.0.1/create_direct_pay_by_user-PHP-UTF-8/notify_url.php';
$config->alipay->returnURL = 'http://127.0.0.1/create_direct_pay_by_user-PHP-UTF-8/return_url.php';

$config->alipay->map['service']   = 'service';
$config->alipay->map['signType']  = 'sign_type';
$config->alipay->map['payType']   = 'payment_type';
$config->alipay->map['charset']   = '_input_charset';
$config->alipay->map['notifyURL'] = 'notify_url';
$config->alipay->map['returnURL'] = 'return_url';

$config->alipay->map['pid']       = 'partner';
$config->alipay->map['key']       = 'security_code';
$config->alipay->map['email']     = 'seller_email';

$config->alipay->map['orderNO'] = 'out_trade_no';
$config->alipay->map['subject'] = 'subject';
$config->alipay->map['money']   = 'total_fee';
$config->alipay->map['body']    = 'body';
$config->alipay->map['extra']   = 'extra_common';

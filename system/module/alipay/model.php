<?php
class alipayModel extends model
{

    public function pay($order)
    {
        $this->config->alipay->orderNO = "131313123";
        $this->config->alipay->subject = "超轻粘土1000g";
        $this->config->alipay->money   = "100";
        $this->config->alipay->body    = "备注说明";
        $this->config->alipay->pid     = $this->loadModel('setting')->getItem('owner=system&module=pay&section=alipay&key=partner');
        $this->config->alipay->key     = $this->loadModel('setting')->getItem('owner=system&module=pay&section=alipay&key=key');

        $params = $this->createParams();
        $this->submit($params);
    }

    private function createParams()
    {
        foreach($this->config->alipay->map as $ourKey => $aliKey)
        {
            if(isset($this->config->alipay->$ourKey) and $this->config->alipay->$ourKey and $ourKey != 'key') $params[$aliKey] = $this->config->alipay->$ourKey;
        }
        $params['sign'] = $this->createSign($params);
        return $params;
    }

    private function createSign($params)
    {
        /* 去掉不参与加密运算的元素。*/
        unset($params['sign_type']);
        unset($params['sign']);
        unset($params['key']);

        /* 按照键值进行排序。*/
        ksort($params);
        reset($params);

        /* 拼接变量。需要调用一下urldeocde，估计支付宝那边是把参数decode之后进行签名的。*/
        $queryString = urldecode(http_build_query($params));
        $queryString .= $this->config->alipay->key;

		if($this->config->alipay->signType == 'MD5') return md5($queryString);
        return "";
    }

    private function submit($params)
    {
        $html  = "<form id='alipaysubmit' name='alipaysubmit' action='{$this->config->alipay->payGW}'_input_charset='{trim(strtolower($this->config->alipay->charset))}' method='{$this->config->alipay->method}'>";
        while (list ($key, $val) = each ($params)) $html .= "<input type='hidden' name='$key' value='$val'/>";
        $html .= "<input type='submit' value='确认'></form>";
        $html .= "<script>document.forms['alipaysubmit'].submit();</script>";
        echo $html;
    }
}

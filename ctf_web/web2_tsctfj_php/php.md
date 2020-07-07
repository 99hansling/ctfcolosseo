## 题目信息

出题人 MercyL1n

出题时间 20191017

题目名字 php

题目类型 web

题目难度 低

## 题目描述

decode!decode!decode!

## 题目考点

基本php语法

## 题目环境

1.ubuntu 16.04

2.Apache2

3.php7

## 题目writeup

```php
<?php 
$miwen = "a1zLbkKq0EJqagTLzWTq6OJMzETpyMzs";
function decode($str){ 
    $_ = base64_decode(strrev(str_rot13($str)));
    
    for($_0=0;$_0<strlen($_);$_0++){ 
        
        $_c = substr($_,$_0,1); 
        $__ = ord($_c)-1; 
        $_c = chr($__); 
        $_o = $_o.$_c;    
    } 
    
    return strrev($_o);
}
$flag = decode($miwen);
echo $flag;
// flag{tsctfj_easy_decode}
?>
```

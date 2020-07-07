#!/bin/bash

sleep 1
/etc/init.d/apache2 start
a2enmod php7.0
restart apache2
while true;do 
	sleep 10
done
/bin/bash

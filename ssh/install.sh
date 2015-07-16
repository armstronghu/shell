#!/bin/bash

is_exist=`grep MY_SHELL  /etc/profile | wc -l`
if [ ${is_exist} -gt 0 ];then
		echo "yes"
		#sed -i '/\[mysqld\]/a\skip-name-resolve' /etc/my.cnf
fi

#!/bin/bash
OPTION=$(whiptail --menu "Choose your option" 15 60 7 \
		"1" "helios微信" \
		"2" "moretv微信" \
		"3" "moretv_消息" \
		"4" "helios_消息" \
		"5" "appstoreCms" \
		"6" "appstoreApi" \
		"7" "helios临时状态服务"  3>&1 1>&2 2>&3)
 
exitstatus=$?
if [ $exitstatus = 0 ]; then
	case $OPTION in
	4) 
			/home/steven/shell/ssh/helios_mess.exp;;
	5) 
			/home/steven/shell/ssh/appcms.exp;;

	esac
else
	echo "You chose Cancel."
fi

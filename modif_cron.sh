#!bin/bash

SHASUM1=$(shasum /etc/crontab | awk '{ print $1 }')

SHASUM2=$(shasum ~/.crontab.bac | awk '{ print $1 }')

if [ "$SHASUM1" != "$SHASUM2" ] ; then
	
	echo -e "Subject: Cron Log\r\n\r\nCron was modified on Rodger VM" |msmtp --from=ghbdth.crash@mail.ru -t ghbdth.crash@mail.ru

	cp /etc/crontab ~/.crontab.bac

fi

exit 0

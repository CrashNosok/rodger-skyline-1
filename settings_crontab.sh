sudo touch /var/log/update_script.log
sudo cp ./configs/crontab /etc/crontab
sudo cp update_script.sh /etc/cron.d
sudo systemctl restart ctontab

sudo cp configs/jail.local /etc/fail2ban
sudo cp configs/http-query-ddos.conf /etc/fail2ban/filter.d
sudo service fail2ban restart

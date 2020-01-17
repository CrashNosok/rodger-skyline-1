sudo openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/ssl/private/nginx-selfsigned.key -out /etc/ssl/certs/nginx-selfsigned.crt -subj '/C=RU/ST=Moscow/L=Moscow/O=21School/OU=21/emailAddress=mail/CN=test'

sudo openssl dhparam -out /etc/nginx/dhparam.pem 2048
sudo cp ./configs/self-signed.conf /etc/nginx/snippets/self-signed.conf
sudo cp ./configs/ssl-params.conf /etc/nginx/snippets/ssl-params.conf
sudo cp /etc/nginx/sites-available/default /etc/nginx/sites-available/default.bak
sudo cp ./configs/default /etc/nginx/sites-available/default

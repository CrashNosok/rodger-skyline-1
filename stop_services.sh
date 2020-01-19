sudo service dbus stop
sudo service udev stop
sudo service procps stop
sudo service kmod stop
sudo systemctl disable dbus
sudo systemctl disable udev
sudo systemctl disable procps
sudo systemctl disable kmod

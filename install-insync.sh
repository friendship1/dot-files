# https://www.insynchq.com/downloads/linux#apt
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys ACCAF35C
sudo add-apt-repository 'deb http://apt.insync.io/ubuntu' $(lsb_release --codename --short) 'non-free contrib'
sudo apt-get update
sudo apt-get install insync
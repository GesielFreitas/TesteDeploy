#script.sh
#!/bin/bash


echo "Update: starting"
sudo apt-get update
sudo apt-get upgrade 
echo "Update: DONE"

echo "Install git: starting"
sudo apt-get -y install git 
echo "Install git: DONE"

echo "Installing additional dependences: starting"
sudo apt-get install -y build-essential autoconf bison libssl-dev libyaml-dev libreadline6-dev zlib1g-dev libncurses5-dev libffi-dev libgdbm-dev

sudo apt-get -y install nodejs 
echo "Installing additional dependences: DONE"

echo "Installing rvm: starting"
sudo apt-get -y install curl 
gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 

echo "chave instalada"

echo "Instalando RVM"
\curl -sSL https://get.rvm.io | bash

echo "RVM instalada"

echo "diretorio para uso do rvm"
source /home/vagrant/.rvm/scripts/rvm 
echo "Installing rvm: Done"

echo "Installing ruby: starting"
rvm install 2.3.1
rvm use 2.3.1 --default
echo "Ruby instaled: DONE"

echo "Installing rails: starting"
gem install bundler
gem install rails -v 4.2.4
echo "Installing rails: DONE"

echo "install mysql cliente"
sudo apt-get -y install mysql-client
echo "mysql instaled: DONE"

echo "instalation mysql server starting"
sudo debconf-set-selections <<< "mysql-server mysql-server/root_password password root"
sudo debconf-set-selections <<< "mysql-server mysql-server/root_password_again password root"
sudo apt-get -y install mysql-server
sudo apt-get install -y  libmysqlclient-dev

echo "mysql server instaled: DONE"

echo "instalation postgree: starting"
sudo apt-get install -y postgresql
sudo apt-get install -y libpq-dev
echo "postgree instaled: DONE" 
echo "instalation sucess"

echo "instalation gems and create db: starting"
cd /vagrant
bundle install
rake db:create db:migrate
echo "success"

echo "Instalation Complete!"





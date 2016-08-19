echo "There's no place like home."
cp /vagrant/.bash_profile /home/vagrant/.bashrc
cp /vagrant/.inputrc /home/vagrant/.inputrc

echo 'Updating apt-get.'
apt-get update

sudo debconf-set-selections <<< 'mysql-server mysql-server/root_password password password'
sudo debconf-set-selections <<< 'mysql-server mysql-server/root_password_again password password'
sudo apt-get -y install mariadb-server
mysql -u root --password=password -e "CREATE DATABASE og"
echo "Loading data. This will take a few minutes."
cd /vagrant/workspace/data/
mysql -u root --password=password og < etl.sql

echo "Installing Python3 and scientific packages via apt-get."
sudo apt-get -y install python3-pip > /dev/null 2>&1
sudo apt-get -y install gfortran > /dev/null 2>&1
sudo apt-get -y install python3-numpy > /dev/null 2>&1
sudo apt-get -y install python3-scipy > /dev/null 2>&1
sudo apt-get -y install python3-pandas > /dev/null 2>&1
sudo apt-get -y install python3-sqlalchemy > /dev/null 2>&1

echo 'Installing other Python packages via pip3.'
pip3 install sklearn > /dev/null 2>&1
pip3 install seaborn > /dev/null 2>&1
pip3 install jupyter > /dev/null 2>&1
pip3 install flask > /dev/null 2>&1

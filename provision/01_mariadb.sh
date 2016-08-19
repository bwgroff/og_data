echo "Installing MariaDB."

sudo debconf-set-selections <<< 'mysql-server mysql-server/root_password password password'
sudo debconf-set-selections <<< 'mysql-server mysql-server/root_password_again password password'
sudo apt-get -y install mariadb-server
mysql -u root --password=password -e "CREATE DATABASE og"
echo "Loading data. This will take a few minutes."
cd /vagrant/workspace/data/
mysql -u root --password=password og < etl.sql

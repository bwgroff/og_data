echo "Installing Python3 and scientific packages via apt-get."
sudo apt-get -y install python3-pip > /dev/null 2>&1
sudo apt-get -y install gfortran > /dev/null 2>&1
sudo apt-get -y install python3-numpy > /dev/null 2>&1
sudo apt-get -y install python3-scipy > /dev/null 2>&1
sudo apt-get -y install python3-pandas > /dev/null 2>&1
sudo apt-get -y install python3-sqlalchemy > /dev/null 2>&1
sudo apt-get -y install python3-mysql.connector > /dev/null 2>&1

echo 'Installing other Python packages via pip3.'
pip3 install sklearn > /dev/null 2>&1
pip3 install seaborn > /dev/null 2>&1
pip3 install jupyter > /dev/null 2>&1
pip3 install flask > /dev/null 2>&1

echo "There's no place like home."
cp /vagrant/.bash_profile /home/vagrant/.bashrc
cp /vagrant/.inputrc /home/vagrant/.inputrc

echo 'Updating apt-get.'
apt-get update

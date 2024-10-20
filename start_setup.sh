mv ./oms-src4.0-DUMMY_MASTER/* ./
mv ./oms-src4.0-DUMMY_MASTER/.bash_profile ./oms-src4.0-DUMMY_MASTER/.bashrc ./oms-src4.0-DUMMY_MASTER/.gitignore ./
source ~/.bashrc
chown -R $USER:$USER /home/$USER/
sudo dnf install /home/OM-TEST123/MySQL-Cluster-*
sudo dnf install git 
rm -rf /home/OM-TEST123/MySQL-Cluster-*

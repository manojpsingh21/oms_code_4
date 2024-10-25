sudo dnf install -y dos2unix
sudo chown -R $USER:$USER /home/$USER/
mv ~/oms-src4.0-DUMMY_MASTER/* ~/
mv ~/oms-src4.0-DUMMY_MASTER/.bash_profile ./oms-src4.0-DUMMY_MASTER/.bashrc ./oms-src4.0-DUMMY_MASTER/.gitignore ~/
dos2unix ~/.bashrc
source ~/.bashrc
mkdir -p ~/Application/Objects
#chown -R $USER:$USER /home/$USER/
#sudo dnf install /home/OM-TEST123/MySQL-Cluster-*
#sudo dnf install git 
#rm -rf /home/OM-TEST123/MySQL-Cluster-*

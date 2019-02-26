#SECURE-SSH.SH
#AUTHOR DOUGLAS
#creates a new ssh user called $1
#adds a publik key to that users authorized keys file
#remotes root ability to ssh


read -p 'Username: ' uservar
sudo useradd $uservar
sudo mkdir /home/$uservar/.ssh
sudo cp ../../linux/public-keys/sys265.pub /home/$uservar/.ssh
sudo chmod 700 /home/$uservar/.ssh
sudo chmod 600 /home/$uservar/.ssh/sys265.pub
sudo chown -R $uservar:$uservar /home/$uservar/.ssh

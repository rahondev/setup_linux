#!/bin/bash
echo "Inside the root.sh script";

# install Visual Studeio Code on Ubunut and Debian based distros

echo "Installing Visual Studio Code";

wget https://go.microsoft.com/fwlink/?LinkID=760868
cp index.html\?LinkID=760868 code.deb
rm index.html\?LinkID=760868 -f
sudo apt install ./code.deb

# Check if package git is installed

echo "Installing Git";
sudo apt-get install git <<< y
git config --global user.name "Christoph Brosch"
git config --global user.email "christoph.brosch@outlook.de"

# Install curl

echo "installing curl"
sudo apt-get install curl <<< y

# setup 'Snippet Daemon' for Visual Studio Code

sudo -u $ACTIVEUSER mkdir ~/.config/Code
sudo -u $ACTIVEUSER mkdir ~/.config/Code/User
# sudo ./script.sh makes %USER => root 
# chown -hR $USER ~/.config/Code
cd ~/.config/Code/User
sudo -u $ACTIVEUSER git clone https://github.com/rahondev/vsc_snippets.git
sudo -u $ACTIVEUSER mv vsc_snippets snippets
rm vsc_snippets -rf
cd snippets
sudo -u $ACTIVEUSER ./init.sh

exit 0;

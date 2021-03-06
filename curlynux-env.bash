#!/bin/bash

echo "#######################################################"
echo "############# INSTALL build-essential  ################"
echo "#######################################################"
echo "  "

sudo apt-get install build-essential

echo "   "
echo "install done."
echo "   "

echo "##########################################"
echo "############# INSTALL git ################"
echo "##########################################"
echo "  "

sudo apt-get install git

echo "   "
echo "install done."
echo "   "

echo "###########################################"
echo "############# INSTALL ZSH  ################"
echo "###########################################"
echo "  "

echo "before installing zsh,
if it's the first time you're on linux or you just doesn't know how zsh work for the begining.
just select option 2 when it's asked to you "
sudo apt-get update ; sudo apt-get install zsh


echo "############################################"
echo "############# configure git ################"
echo "############################################"
echo "  "

git config --global user.name "your_UserName"
git config --global user.email exemple@mail.com
ssh-keygen -t rsa -b 4096 -C "ex@mail.com"
cat $HOME/.ssh/id_rsa.pub

echo "################################################"
echo "############# INSTALL OH MY ZSH ################"
echo "################################################"
echo "  "

cd ~ ; sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

echo "   "
echo "install done."
echo "   "

echo "###############################################################"
echo "############# INSTALL nodejs using nodeSource  ################"
echo "###############################################################"

curl -sL https://deb.nodesource.com/setup_6.x | bash -
apt-get install -y nodejs
echo "   "
echo "install done."
echo "   "

echo "##############################################"
echo "############# INSTALL yarnpkg ################"
echo "############ #################################"

curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt-get update ; sudo apt-get install yarn

echo "   "
echo "install done."
echo "   "

echo "##########################################"
echo "############# INSTALL npm ################"
echo "############ ### #########################"

sudo yarn global add npm

echo "   "
echo "install done."
echo "   "

echo "###########################################"
echo "############# INSTALL atom ################"
echo "############ ### ##########################"
sudo apt-get install -y build-essential git libsecret-1-dev fakeroot rpm libx11-dev libxkbfile-dev
cd $HOME/Téléchargements && cd atom ; node ./script/build

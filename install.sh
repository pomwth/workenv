#!/bin/bash

DIR=`dirname "$0"`
UNIQID=$(date +'%Y%m%d%H%M%S')

sudo apt update
sudo apt upgrade
sudo apt-get update
sudo apt-get upgrade

sudo apt install mlocate -y
sudo apt install curl -y

#https://brew.sh/
#for Linux - install Homebrew
#/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
#test -d ~/.linuxbrew && eval $(~/.linuxbrew/bin/brew shellenv)
#test -d /home/linuxbrew/.linuxbrew && eval $(/home/linuxbrew/.linuxbrew/bin/brew shellenv)
#test -r ~/.bash_profile && echo "eval \$($(brew --prefix)/bin/brew shellenv)" >>~/.bash_profile
#echo "eval \$($(brew --prefix)/bin/brew shellenv)" >>~/.profile

sudo apt install zsh -y
sudo apt install powerline fonts-powerline -y
mv ~/.oh-my-zsh ~/.oh-my-zsh-BCK-$UNIQID
ln -s $DIR/oh-my-zsh ~/.oh-my-zsh
#rm -f ~/.zshrc
#mv ~/.zshrc ~/.zshrc-BCK-$UNIQID
#ln -s $DIR/oh-my-zsh/.zshrc ~/.zshrc

# Install GIT
sudo apt install git -y
git config --global user.email "pom.wallop.th@gmail.com"
git config --global user.name "Wallop Th"

# Install GitHub CLI
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-key C99B11DEB97541F0
sudo apt-add-repository https://cli.github.com/packages
sudo apt update
sudo apt install gh



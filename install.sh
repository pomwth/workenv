#!/bin/sh

SCRIPT=$(readlink -f "$0")
DIR=$(dirname "$SCRIPT")
UNI=$(date +'%Y%m%d%H%M%S')
HOME=~

sudo apt update
sudo apt upgrade
sudo apt-get update
sudo apt-get upgrade

sudo apt install mlocate -y
sudo apt install curl -y

#https://brew.sh/
#for Linux - install Homebrew
#/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
#test -d $HOME/.linuxbrew && eval $($HOME/.linuxbrew/bin/brew shellenv)
#test -d /home/linuxbrew/.linuxbrew && eval $(/home/linuxbrew/.linuxbrew/bin/brew shellenv)
#test -r $HOME/.bash_profile && echo "eval \$($(brew --prefix)/bin/brew shellenv)" >>~/.bash_profile
#echo "eval \$($(brew --prefix)/bin/brew shellenv)" >>$HOME/.profile

sudo apt install zsh -y
sudo apt install powerline fonts-powerline -y
rm -Rf $HOME/.oh-my-zsh
ln -fs $DIR/oh-my-zsh $HOME/.oh-my-zsh

# Install GIT
sudo apt install git -y
git config --global core.editor "vim"
git config --global user.email "pom.wallop.th@gmail.com"
git config --global user.name "Wallop Th"
git config --global push.defailt current

# Install GitHub CLI
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-key C99B11DEB97541F0
sudo apt-add-repository https://cli.github.com/packages
sudo apt update
sudo apt install gh
gh config set editor vim

sudo apt install nodejs -y
sudo apt install npm -y

sudo apt install ripgrep


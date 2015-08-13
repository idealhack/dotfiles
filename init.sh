#!/bin/bash

# homebrew
echo -e "\033[0;33mInstalling Homebrew...\033[0m"
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# development tools
echo -e "\033[0;33mInstalling development tools...\033[0m"
brew tap homebrew/homebrew-dupes homebrew/homebrew-versions homebrew/homebrew-php

brew install git tmux vim macvim zsh \
             wget curl colordiff mtr tree stormssh \
             python ruby node \
             mysql mongodb redis \
             nginx

brew install --with-fpm --without-apache php54
brew install memcached php54-memcache php54-mcrypt

brew install caskroom/cask/brew-cask
brew cask install qlcolorcode qlstephen qlmarkdown quicklook-json qlprettypatch quicklook-csv betterzipql qlimagesize webpquicklook suspicious-package

# oh-my-zsh
echo -e "\033[0;33mInstalling Oh My Zsh...\033[0m"
curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh

# vundle
echo -e "\033[0;33mInstalling Vundle...\033[0m"
git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
mkdir -p ~/.vim/{backup,swap}

# bootstraping
echo -e "\033[0;33mConfiguring all these stuff...\033[0m"
./sync.sh

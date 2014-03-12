#!/bin/bash

# homebrew
echo -e "\033[0;33mInstalling Homebrew...\033[0m"
ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"

# development tools
echo -e "\033[0;33mInstalling development tools...\033[0m"
brew install git tmux vim macvim zsh \
             curl colordiff mtr tree \
             python ruby node \
             mongodb redis \
             nginx

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

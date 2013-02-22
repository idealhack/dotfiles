# oh-my-zsh
ZSH=$HOME/.oh-my-zsh
ZSH_THEME="robbyrussell"
plugins=(brew git git-extras git-flow github heroku node npm osx pip python rsync sublime svn vundle)
source $ZSH/oh-my-zsh.sh
unsetopt correct_all

# varables
export PATH=/usr/local/bin:/usr/local/sbin:$PATH

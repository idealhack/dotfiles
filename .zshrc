# oh-my-zsh
ZSH=$HOME/.oh-my-zsh
ZSH_THEME="robbyrussell"
plugins=(brew git git-extras git-flow github heroku node npm osx pip python rsync sublime vundle)
source $ZSH/oh-my-zsh.sh
unsetopt correct_all

# locale
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# env
export EDITOR=vim
# homebrew
export PATH=/usr/local/bin:/usr/local/sbin:$PATH
# gem
export PATH=/usr/local/opt/ruby/bin:$PATH
# npm
export PATH=/usr/local/share/npm/bin:$PATH
# android
export PATH=$HOME/Work/android/sdk/tools:$PATH
export PATH=$HOME/Work/android/sdk/platform-tools:$PATH

# alias
alias diff=colordiff

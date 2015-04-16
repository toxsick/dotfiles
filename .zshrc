#-------------------------------------------------
# ZSH setup
#-------------------------------------------------

# Path to your oh-my-zsh configuration.
ZSH=~/.zsh

# set ZSH_CUSTOM path
ZSH_CUSTOM=~/dotfiles/zsh_custom

# Theme
ZSH_THEME=kennethreitz

# GO Stuff
export GOPATH=$HOME/Coding/go

# Plugins
plugins=(brew docker fabric git golang knife osx pip python redis-cli sublime tmux)

# load oh-my-zsh
source $ZSH/oh-my-zsh.sh

#-------------------------------------------------
# Initialize stuff
#-------------------------------------------------

# rvm activate
source ~/.rvm/scripts/'rvm'

# pyenv activate
if [[ -d $PYENV_ROOT ]];then
    # initialize pyenv
    eval "$(pyenv init -)"
    # initialize pyenv virtualenv
    eval "$(pyenv virtualenv-init -)"
fi

# autoenv activate
if [[ -f /usr/local/opt/autoenv/activate.sh ]];then
    source /usr/local/opt/autoenv/activate.sh
fi

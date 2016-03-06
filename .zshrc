#-------------------------------------------------
# ZSH setup
#-------------------------------------------------

# Path to your oh-my-zsh configuration.
ZSH=~/.zsh

# set ZSH_CUSTOM path
ZSH_CUSTOM=~/dotfiles/zsh_custom

# Theme
ZSH_THEME=kennethreitz

# Plugins
plugins=(brew docker git osx pip python sublime tmux)

# load oh-my-zsh
source $ZSH/oh-my-zsh.sh

#-------------------------------------------------
# Initialize stuff
#-------------------------------------------------

# rvm activate
if [[ -f ~/.rvm/scripts/rvm ]];then
    source ~/.rvm/scripts/rvm
fi

# pyenv activate
if [[ -d $PYENV_ROOT ]];then
    # initialize pyenv
    eval "$(pyenv init -)"
    # initialize pyenv virtualenv
    eval "$(pyenv virtualenv-init -)"
fi

# initialize docker toolbox env
if which  docker-machine >/dev/null 2>&1; then
    eval "$(docker-machine env default)"
fi

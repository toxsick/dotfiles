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
plugins=(brew docker git nvm osx pip python yarn)

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

export NVM_DIR="/Users/hannes/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

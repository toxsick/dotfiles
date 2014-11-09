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
plugins=(autoenv brew fabric git golang knife osx pip python redis-cli sublime)

# load oh-my-zsh
source $ZSH/oh-my-zsh.sh

#-------------------------------------------------
# ENVARS
#-------------------------------------------------

# Go
export GOPATH=$HOME/Coding/go

# pyenv/virtualenvwrapper
export ENV_DIR="~/.virtualenvs"
export PYENV_ROOT="$HOME/.pyenv"
export PYENV_VIRTUALENVWRAPPER_PREFER_PYVENV="true"

# # Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"


#-------------------------------------------------
# PATH Setup
#-------------------------------------------------
PATH=/usr/local/bin:/usr/local/sbin:$PATH

# Heroku Toolbelt
PATH=/usr/local/heroku/bin:$PATH

# Add RVM to PATH for scripting
PATH=$HOME/.rvm/bin:$PATH

# Add GO workspace's bin to PATH
PATH=$PATH:$GOPATH/bin

# Add pyenv shims to PATH
if [[ -d $HOME/.pyenv ]];then
    PATH="$PYENV_ROOT/bin:$PATH"
fi

#-------------------------------------------------
# Initialize
#-------------------------------------------------

# rvm activate
source ~/.rvm/scripts/'rvm'

# pyenv activate
if [[ -d $PYENV_ROOT ]];then
    # initialize pyenv
    eval "$(pyenv init -)"
    # initialize pyenv virtualenvwrapper
    pyenv virtualenvwrapper
    #source ~/.pyenv/plugins/pyenv-autoenv/bin/pyenv-autoenv
fi

# autoenv activate
if [[ -f /usr/local/opt/autoenv/activate.sh ]];then
    source /usr/local/opt/autoenv/activate.sh
fi

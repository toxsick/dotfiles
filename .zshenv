#-------------------------------------------------
# ENVARS
#-------------------------------------------------

# Go
export GOPATH=$HOME/Coding/go

# pyenv root
export PYENV_ROOT=$HOME/.pyenv

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

# Add QT to PATH
PATH=$PATH:/usr/local/Cellar/qt5/5.3.2/bin

# Add pyenv root to PATH
if [[ -d $PYENV_ROOT ]];then
    PATH="$PYENV_ROOT/bin:$PATH"
fi

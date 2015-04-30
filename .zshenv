#-------------------------------------------------
# ENVARS
#-------------------------------------------------

# Go
export GOPATH=$HOME/Coding/go

# pyenv root
export PYENV_ROOT=$HOME/.pyenv

# deisctl settings
if [ -f $HOME/.deis/deisctl.zsh ]; then
    source $HOME/.deis/deisctl.zsh
fi

# boot2docker
if [[ -d ~/.boot2docker ]]; then
    export DOCKER_CERT_PATH=/Users/hannes/.boot2docker/certs/boot2docker-vm
    export DOCKER_TLS_VERIFY=1
    export DOCKER_HOST=tcp://192.168.59.103:2376
fi

# # Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi


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

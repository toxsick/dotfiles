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


#-------------------------------------------------
# PATH Setup
#-------------------------------------------------
PATH=/usr/local/bin:/usr/local/sbin:$PATH

# Heroku Toolbelt
PATH=/usr/local/heroku/bin:$PATH

# Add RVM to PATH for scripting
PATH=$HOME/.rvm/bin:$PATH

# Add pyenv root to PATH
if [[ -d $PYENV_ROOT ]];then
    PATH="$PYENV_ROOT/bin:$PATH"
fi

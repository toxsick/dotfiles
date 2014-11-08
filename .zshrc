# Path to your oh-my-zsh configuration.
ZSH=~/.zsh

# set ZSH_CUSTOM path
ZSH_CUSTOM=~/dotfiles/zsh_custom

# Theme
ZSH_THEME=kennethreitz

# GO Stuff
export GOPATH=$HOME/Coding/go

# Plugins
plugins=(autoenv fabric git golang knife osx pip python redis-cli sublime virtualenvwrapper)

# load oh-my-zsh
source $ZSH/oh-my-zsh.sh

# pyenv setup
if [[ -d $HOME/.pyenv ]];then

    # initialize pyenv
    export PYENV_ROOT="$HOME/.pyenv"
    export PATH="$PYENV_ROOT/bin:$PATH"
    eval "$(pyenv init -)"

    # initialize pyenv virtualenvwrapper
    export PYENV_VIRTUALENVWRAPPER_PREFER_PYVENV="true"
    pyenv virtualenvwrapper
    #source ~/.pyenv/plugins/pyenv-autoenv/bin/pyenv-autoenv
fi

# autoenv activate
if [[ -f /usr/local/opt/autoenv/activate.sh ]];then
    source /usr/local/opt/autoenv/activate.sh
fi

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

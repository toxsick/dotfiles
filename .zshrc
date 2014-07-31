# Path to your oh-my-zsh configuration.
ZSH=~/.zsh

# set ZSH_CUSTOM path
ZSH_CUSTOM=~/dotfiles/zsh_custom

# Theme
ZSH_THEME=kennethreitz

# Plugins
plugins=(autoenv fabric git knife osx pip python redis-cli sublime virtualenvwrapper)

# other required environment vars
export VIRTUALENVWRAPPER_PYTHON=/usr/local/bin/python

# load oh-my-zsh
source $ZSH/oh-my-zsh.sh

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

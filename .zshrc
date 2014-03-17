# Path to your oh-my-zsh configuration.
ZSH=~/.zsh

# Theme
ZSH_THEME=kennethreitz

# Plugins
plugins=(autoenv fabric git knife osx pip python redis-cli sublime virtualenvwrapper)

# Path
export PATH="/usr/local/heroku/bin:/usr/local/bin:/usr/local/sbin:/usr/local/bin:/Library/Frameworks/Python.framework/Versions/2.7/bin:/Users/Dale/.rvm/gems/ruby-2.0.0-p0/bin:/Users/Dale/.rvm/gems/ruby-2.0.0-p0@global/bin:/Users/Dale/.rvm/rubies/ruby-2.0.0-p0/bin:/Users/Dale/.rvm/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/Users/Dale/.rvm/bin"
# export MANPATH="/usr/local/man:$MANPATH"

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

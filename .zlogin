PATH=/usr/local/bin:/usr/local/sbin:$PATH

# Heroku Toolbelt
PATH=/usr/local/heroku/bin:$PATH

# Source Python aitoenv activate
source /usr/local/opt/autoenv/activate.sh

# Add RVM to PATH for scripting
source ~/.rvm/scripts/'rvm'
PATH=$HOME/.rvm/bin:$PATH

# Add GO workspace's bin to PATH
PATH=$PATH:$GOPATH/bin


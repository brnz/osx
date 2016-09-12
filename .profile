# Author - Brian Z.

# source bashrc if exists
[ -s "$HOME/.bashrc" ] && . "$HOME/.bashrc"

#-------------------------------------------------------------------------------

export NVM_DIR="/Users/brian/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
. $(brew --prefix nvm)/nvm.sh

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*


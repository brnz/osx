# Author: Brian Z.

# source global bashrc if exists.
# important for resume support in Apple Terminal
[ -s "/etc/bashrc" ] && . "/etc/bashrc"

# shell/system
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias ls='ls -G'
alias la='ls -A'
alias ll='ls -hl'
alias lla='ls -Ahl'
alias l='ls'
alias mv='mv -i'
alias rm='rm -i'
# archive extraction/compression
alias extract='7z x'
alias ultrazip='7z a -t7z -m0=lzma -mx=9 -mfb=64 -md=32m -ms=on'
# terminal applications
alias mpg123='mpg123 -C'
# desktop applications
alias chrome='/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome'
alias vlc='$HOME/Applications/VLC.app/Contents/MacOS/VLC'
# web applications
alias music='chrome --app=https://play.google.com/music/listen'
#--force-device-scale-factor --window-size=1000,800'
alias messenger='chrome --app=http://www.messenger.com'
alias netflix='chrome --app=https://www.netflix.com'
# Mac shit
alias refresh='find $HOME -name ".DS_Store" -depth -exec rm -v {} \;'
alias refresh-all='sudo find / -name ".DS_Store" -depth -exec rm -v {} \;'
alias refresh-dock='defaults write com.apple.dock ResetLaunchPad -bool true; killall Dock'

# Mac ls colorization 
if [ "$TERM_PROGRAM" = "Apple_Terminal" ]; then
  export LSCOLORS=ExGxFxdaCxDADAadhbheEx
fi

# prompt colors 
reset="\[\033[0m\]"
black="\[\033[0;30m\]"
red="\[\033[0;31m\]"
green="\[\033[0;32m\]"
brown="\[\033[0;33m\]"
blue="\[\033[0;34m\]"
purple="\[\033[0;35m\]"
cyan="\[\033[0;36m\]"
lightgray="\[\033[0;37m\]"
darkgray="\[\033[1;30m\]"
lightred="\[\033[1;31m\]"
lightgreen="\[\033[1;32m\]"
yellow="\[\033[1;33m\]"
lightblue="\[\033[1;34m\]"
lightpurple="\[\033[1;35m\]"
lightcyan="\[\033[1;35m\]"
white="\[\033[1;35m\]"

# set prompt based on root/user 
if [ "$USER" = "root" ]; then
  PS1='\[\033[1;31m\]\u@\h\[\033[0m\]:\[\033[1;34m\]\w\[\033[0m\]\$ '
else
  PS1='\h:\w \u\$ '
fi

export NVM_DIR="/Users/brian/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
. $(brew --prefix nvm)/nvm.sh

export PATH="/usr/local/sbin:$PATH"

#------------------------------------------------------------------------------

# don't put duplicate lines or lines starting with space in the history.
# see bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# if set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
#shopt -s globstar

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# you may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
if [ -f ~/.bash_aliases ]; then
  . ~/.bash_aliases
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

#-------------------------------------------------------------------------------

# delete key
#stty erase 

template () {
  if [ -z "$1" ]; then
    echo "Usage: template <ARGUMENTS>"
  fi
}


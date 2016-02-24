# Author: Brian Z.

# source bashrc if exists
[ -s "$HOME/.bashrc" ] && . "$HOME/.bashrc" 2> "/dev/null"

autoload -U add-zsh-hook colors select-word-style
# tell terminal about current working directory.
# important for resume support in Apple Terminal
# NOTE - this is currently broken for paths with spaces
add-zsh-hook chpwd update_terminal_cwd
update_terminal_cwd
colors
# bash-style word functions
select-word-style bash

# prompt expansion
PS1="%{$bold_color%}%m:%80<..<%~ %n%{$reset_color%}%(!.#.$) "

# enable shift-tab
bindkey "^[[Z" reverse-menu-complete

#-------------------------------------------------------------------------------

# configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt appendhistory autocd beep extendedglob nomatch notify
bindkey -e

# added by compinstall
zstyle :compinstall filename '/Users/brian/.zshrc'

autoload -Uz compinit
compinit


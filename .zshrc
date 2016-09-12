# Author - Brian Z.

# source bashrc if exists
[ -s "$HOME/.bashrc" ] && . "$HOME/.bashrc" 2> "/dev/null"

autoload -U add-zsh-hook colors select-word-style
# tell terminal about current working directory.
# important for resume support in Apple Terminal
# NOTE - this is currently broken for paths with spaces
#add-zsh-hook chpwd update_terminal_cwd
#update_terminal_cwd
colors
# bash-style word functions
select-word-style bash

# prompt expansion
# TODO - refactor all this shit
export HOME="/Users/brian"
. "$HOME/.zsh/prompt.zsh"
# TODO - add (time)(job#1)(job#2)
#export PROMPT="
#(%(!.%{$fg[red]%}.%{$fg[green]%})%n%{$reset_color%}@%{$fg[yellow]%}%m%{$reset_color%})(%{$fg[white]%}%80<...<%~%{$reset_color%})$(git_dirty)
#(%{$fg[blue]%}%t%{$reset_color%})%(!.%{$fg_bold[red]%}#.%{$fg_bold[green]%}$) %{$reset_color%}"

# enable shift-tab
bindkey "^[[Z" reverse-menu-complete

# NOTE - temporary solution to be refactored
[ -s "$HOME/.zsh/functions.zsh" ] && . "$HOME/.zsh/functions.zsh"
[ -s "$HOME/.zsh/termsupport.zsh" ] && . "$HOME/.zsh/termsupport.zsh"

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


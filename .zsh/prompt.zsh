# autoload colors && colors
# cheers, @ehrenmurdick
# http://github.com/ehrenmurdick/config/blob/master/zsh/prompt.zsh

if (( $+commands[git] ))
then
  git="$commands[git]"
else
  git="/usr/bin/git"
fi

git_branch() {
  echo $($git symbolic-ref HEAD 2>/dev/null | awk -F/ {'print $NF'})
}

git_dirty() {
  if $(! $git status -s &> /dev/null)
  then
    echo ""
  else
    if [[ $($git status --porcelain) == "" ]]
    then
      echo "(%{$fg[green]%}$(git_prompt_info)%{$reset_color%})"
    else
      echo "(%{$fg[red]%}$(git_prompt_info)%{$reset_color%})"
    fi
  fi
}

git_prompt_info () {
 ref=$($git symbolic-ref HEAD 2>/dev/null) || return
# echo "(%{\e[0;33m%}${ref#refs/heads/}%{\e[0m%})"
 echo "${ref#refs/heads/}"
}

unpushed () {
  $git cherry -v @{upstream} 2>&1
}

need_push () {
  if $(! $git staus -s &> /dev/null) || [[ $(unpushed) == "" ]]
  then
    echo " "
  else
    echo " with %{$fg[magenta]%}unpushed%{$reset_color%} "
  fi
}

ruby_version() {
  if (( $+commands[rbenv] ))
  then
    echo "$(rbenv version | awk '{print $1}')"
  fi

  if (( $+commands[rvm-prompt] ))
  then
    echo "$(rvm-prompt | awk '{print $1}')"
  fi
}

rb_prompt() {
  if ! [[ -z "$(ruby_version)" ]]
  then
    echo "%{$fg_bold[yellow]%}$(ruby_version)%{$reset_color%} "
  else
    echo ""
  fi
}

directory_name() {
  echo "%{$fg[cyan]%}%0~%{$reset_color%}"
}

set_prompt () {
  #export RPROMPT="%{$fg_bold[cyan]%}%{$reset_color%}"
  TIME="$(date +"%-I:%M%p")"
  export PROMPT="
(%(!.%{$fg[red]%}.%{$fg[green]%})%n%{$reset_color%}@%{$fg[yellow]%}%m%{$reset_color%})(%{$fg[white]%}%80<...<%~%{$reset_color%})$(git_dirty)
(%{$fg[blue]%}$TIME%{$reset_color%})%(!.%{$fg_bold[red]%}#.%{$fg_bold[green]%}$) %{$reset_color%}"
}
#
precmd() {
  #title "zsh" "%m" "%55<...<%~"
  set_prompt
}

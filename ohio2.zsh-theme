function get_pwd() {
  echo "${PWD/$HOME/~}"
}
PROMPT="{$fg[yellow]%T-%D$reset_color} $fg[red]%n $reset_color% on $fg[green]%m: $fg[cyan]%$(get_pwd)% $reset_color $(git_prompt_info)   
$reset_color===>  "
ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[blue]%}git:(%{$fg[magenta]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}) $fg[yellow]% edited!"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"
##this was based on the stock theme but idc
function git_prompt_info() {
  ref=$(git symbolic-ref HEAD 2> /dev/null) || return
  echo "$ZSH_THEME_GIT_PROMPT_PREFIX$(current_branch)$ZSH_THEME_GIT_PROMPT_SUFFIX$(parse_git_dirty)"
}

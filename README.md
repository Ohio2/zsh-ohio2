# zsh-ohio2
this is my theming for the Z shell!
you install this via cp
`cp ohio2.zsh-theme ~/.oh-my-zsh/themes`
# Git not showing up? then...
# ...Add this to your zshrc
`autoload -Uz vcs_info
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst
RPROMPT=\$vcs_info_msg_0_
# PROMPT=\$vcs_info_msg_0_'%# '
zstyle ':vcs_info:git:' formats '%b'`

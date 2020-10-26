# zsh-ohio2
this is my theming for the Z shell!
you install this via cp
`cp ohio2.zsh-theme ~/.oh-my-zsh/themes`
# If the git info (branches, is it dirty or not) are not showing up, im working on it. But maybe it won't have GIT_...
# Add tihs to your zshrc
autoload -Uz vcs_info
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst
RPROMPT=\$vcs_info_msg_0_
# PROMPT=\$vcs_info_msg_0_'%# '
zstyle ':vcs_info:git:' formats '%b'

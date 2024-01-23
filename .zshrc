bindkey -e

export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

# zstyles
[[ -r $ZDOTDIR/.zstyles ]] && . $ZDOTDIR/.zstyles

# zsh custom
ZSH_CUSTOM=${ZDOTDIR:-$HOME/.config/zsh}

## Antidote
# See https://getantidote.github.io/ for more information
# Lazy-load antidote and generate the static load file only when needed
zsh_plugins=${ZDOTDIR}/.zsh_plugins
if [[ ! ${zsh_plugins}.zsh -nt ${zsh_plugins}.txt ]]; then
  (
    source /usr/share/zsh-antidote/antidote.zsh
    antidote bundle <${zsh_plugins}.txt >!${zsh_plugins}.zsh
  )
fi

source ${zsh_plugins}.zsh

autoload -Uz compinit && compinit

# Cycle through history based on characters already typed on the line
bindkey "$key_info[Up]" history-substring-search-up
bindkey "$key_info[Down]" history-substring-search-down

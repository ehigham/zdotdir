#
# .zshenv - Zsh environment file, loaded always.
#

export ZDOTDIR=$HOME/.config/zsh

# Ensure that a non-login, non-interactive shell has a defined environment.
if [[ ! -o LOGIN && -s "${ZDOTDIR:-$HOME}/.zprofile" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprofile"
fi

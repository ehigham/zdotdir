# XDG
export XDG_CONFIG_HOME=$HOME/.config
export XDG_CACHE_HOME=$HOME/.cache
export XDG_DATA_HOME=$HOME/.local/share
export XDG_STATE_HOME=$HOME/.local/state

# Add variables for key Zsh directories.
export __zsh_config_dir=${ZDOTDIR:-${XDG_CONFIG_HOME:-$HOME/.config}/zsh}
export __zsh_user_data_dir=${XDG_DATA_HOME:-$HOME/.local/share}/zsh
export __zsh_cache_dir=${XDG_CACHE_HOME:-$HOME/.cache}/zsh

# Ensure Zsh directories exist.
for _zdir in __zsh_{config,user_data,cache}_dir; do
  [[ -d "${(P)_zdir}" ]] || mkdir -p ${(P)_zdir}
done
unset _zdir

# Ensure path arrays do not contain duplicates.
typeset -gU fpath path cdpath
typeset -gUT LD_LIBRARY_PATH ld_library_path :

# Set the list of directories that Zsh searches for programs.
path=(
  # core
  $HOME/.local/{,s}bin(N)
  /opt/{homebrew,local}/{,s}bin(N)
  /usr/local/{,s}bin(N)

  # path
  $path
)

ld_library_path=(
    ${HOME}/.local/lib
    $ld_library_path
)

export PATH
export LD_LIBRARY_PATH

export EDITOR=vim
export GIT_EDITOR=$EDITOR
export VISUAL=code
export PAGER=less

if [[ is-mac ]]; then
  export BROWSER='open'
  export SHELL_SESSIONS_DISABLE=1 # Make Apple Terminal behave.
fi

# Misc
export KEYTIMEOUT=1

# Use `< file` to quickly view the contents of any file.
[[ -z "$READNULLCMD" ]] || READNULLCMD=$PAGER

# cargo
export CARGO_HOME="${XDG_DATA_HOME}/cargo"

# docker
export DOCKER_CONFIG="${XDG_CONFIG_HOME}/docker"

# go
export GOPATH="${XDG_DATA_HOME}/go"
export GOMODCACHE="${XDG_CACHE_HOME}/go/mod"

# haskell
export GHCUP_USE_XDG_DIRS=1
export STACK_XDG=1

# pyenv
export PYENV_ROOT="${XDG_DATA_HOME}/pyenv"

# npm
# see npm config ls -l | grep /
export NPM_CONFIG_USERCONFIG=$XDG_CONFIG_HOME/npm/config
export NPM_CONFIG_CACHE=$XDG_CACHE_HOME/npm
export NPM_CONFIG_TMP=$XDG_RUNTIME_DIR/npm
export PATH=$PATH:$XDG_DATA_HOME/npm/bin

# z
export _Z_DATA="$XDG_DATA_HOME/z"

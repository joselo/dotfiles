autoload -U promptinit; promptinit
prompt pure

alias db="psql -Upostgres"

# Ruby Gems - Prepend to PATH to ensure we use our gems first
export GEM_HOME="$HOME/.ruby"
export PATH="$GEM_HOME/bin:$PATH"

export LC_ALL=C.UTF-8
export LANG=C.UTF-8

[[ -f ~/.secrets ]] && source ~/.secrets

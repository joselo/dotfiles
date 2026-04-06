eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

fpath+=("$(brew --prefix)/share/zsh/site-functions")
autoload -U promptinit; promptinit
prompt pure

alias db="psql -Upostgres"

#export FLYCTL_INSTALL="/home/joselo/.fly"
#export PATH="$FLYCTL_INSTALL/bin:$PATH"
#
export PATH="$HOME/.local/share/gem/ruby/3.3.0/bin:$PATH"
export LC_ALL=C.UTF-8
export LANG=C.UTF-8

[[ -f ~/.secrets ]] && source ~/.secrets


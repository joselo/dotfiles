eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

fpath+=("$(brew --prefix)/share/zsh/site-functions")
autoload -U promptinit; promptinit
prompt pure

alias db="psql -Upostgres"

export FLYCTL_INSTALL="/home/joselo/.fly"
export PATH="$FLYCTL_INSTALL/bin:$PATH"

[[ -f ~/.secrets ]] && source ~/.secrets


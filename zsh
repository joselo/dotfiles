eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

fpath+=("$(brew --prefix)/share/zsh/site-functions")
autoload -U promptinit; promptinit
prompt pure

alias db="psql -Upostgres"

[[ -f ~/.secrets ]] && source ~/.secrets


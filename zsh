autoload -U promptinit; promptinit
prompt pure

alias db="psql -Upostgres"

# Ruby Gems - Path for gems installed with 'gem install' as user
export PATH="$PATH:$(ruby -e 'print Gem.user_dir' 2>/dev/null || echo "$HOME/.local/share/gem/ruby/3.4.0")/bin"

export LC_ALL=C.UTF-8
export LANG=C.UTF-8

[[ -f ~/.secrets ]] && source ~/.secrets

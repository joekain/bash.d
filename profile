export PATH="/usr/local/heroku/bin:~/bin:/Users/jkain/.rubies/ruby-2.1.1/bin:/usr/local/bin:/usr/local/sbin:$PATH"
export EDITOR=atom
export GIT_EDITOR=giteditor

RED="\[\033[0;31m\]"
YELLOW="\[\033[0;33m\]"
GREEN="\[\033[0;32m\]"
GRAY="\[\033[0;37m\]"
BLACK="\[\e[0;30m\]"
DEFAULT="\[\033[0m\]"
BLUE="\[\033[0;34m\]"
LIGHT_BLUE="\[\033[1;34m\]"

if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi



for script in ~/.bash.d/*.sh ; do
  . $script
done

PS1="${RED}jkain-mbp${LIGHT_BLUE}\$(elixir_version)${GREEN}\$(parse_git_branch)${DEFAULT} \w$ "

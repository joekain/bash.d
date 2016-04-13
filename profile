export PATH="/usr/local/heroku/bin:/Users/jkain/bin:/Users/jkain/.rubies/ruby-2.1.1/bin:/usr/local/bin:/usr/local/sbin:$PATH"
export EDITOR=atom
export GIT_EDITOR=giteditor

if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

for script in ~/.bash.d/*.sh ; do
  . $script
done

if [ -z "$PROMPT_NAME" ] ; then
   PROMPT_NAME="jkain-mbp"
fi

PS1="${RED}${PROMPT_NAME}${LIGHT_BLUE}\$(ex_version)${GRAY}\$(erl_version)${GREEN}\$(parse_git_branch)${DEFAULT} \w\n$ "

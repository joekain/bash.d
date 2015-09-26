source $HOME/.bash.d/git-completion.bash

function parse_git_branch {
  ref=$(git symbolic-ref HEAD 2> /dev/null) || return
  echo ":"${ref#refs/heads/}" "
}

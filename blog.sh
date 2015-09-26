. ~/.bash.d/projects.sh

alias blog='go_to_blog'

function go_to_blog() {
  local SUBPATH=$1

  if [ -z "$SUBPATH" ]; then
    SUBPATH="learning-elixir"
  fi

  cd ~/Documents/blog/$SUBPATH
}

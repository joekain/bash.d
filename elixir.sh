TOOLS=$HOME/tools/

function elixir_use {
  export ELIXIR_VERSION=$1
  PATH="$HOME/tools/$1/bin:$PATH"
  export PATH
}

function elixir_list {
  (cd $TOOLS ; ls -d Elixir-*)
}

function elixir_version {
  if [ -n "$ELIXIR_VERSION" ]; then
    echo ":$ELIXIR_VERSION"
  fi
}

# Default environment
elixir_use Elixir-1.0.5

TOOLS=$HOME/tools/
KERL_BUILDS=$HOME/.kerl/builds/

PATH="$HOME/.erlenv/bin":$PATH

test -s "$HOME/.kiex/scripts/kiex" && source "$HOME/.kiex/scripts/kiex"
kiex use 1.1.1

function ex_version {
  if [ -n "$ELIXIR_VERSION" ]; then
    echo ":ex-$ELIXIR_VERSION"
  fi
}


function erl_use {
  export ERLANG_VERSION=$1  
  if [ "$ERLANG_VERSION" != "system" ]; then
    PATH="$KERL_BUILDS/$ERLANG_VERSION/release_$ERLANG_VERSION/bin:$PATH"
  fi
}

function erl_list {
  (cd $KERL_BUILDS ; ls)
}

function erl_version {
  if [ -n "$ERLANG_VERSION" ]; then
    echo ":erl-$ERLANG_VERSION"
  fi
}

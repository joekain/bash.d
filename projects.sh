alias proj='do_project'

function do_project() {
  edit="true"

  for var in "$@" ; do
    case "$var" in
      -ne)
        edit="false"
        ;;
      *)
        go_to_project $var
        ;;
    esac
  done

  if [ $edit == "true" ]; then
    $EDITOR .
  fi
}

function go_to_project() {
  if [ -d ~/Documents/Projects/$1 ]; then
    cd ~/Documents/Projects/$1
  else
    cd $(find ~/Documents/Projects -type d -name ${1}'*' -print -quit)
  fi
}

function mount_rust {
  SERVER=$1
  if [ -n $SERVER ]; then
    SERVER=192.168.56.2
  fi
  sudo mount -t nfs -o resvport,soft $SERVER:/home/joseph/src/rust ~/Documents/Projects/rust
  sudo mount -t nfs -o resvport,soft $SERVER:/home/joseph/src/c ~/Documents/Projects/c
}

function mount_c {
  SERVER=$1
  if [ -n $SERVER ]; then
    SERVER=192.168.56.2
  fi
  sudo mount -t nfs -o resvport,soft $SERVER:/home/joseph/src/c ~/Documents/Projects/c
}

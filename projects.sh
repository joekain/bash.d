alias proj='go_to_project'
function go_to_project() {
  cd ~/Documents/Projects/$1
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

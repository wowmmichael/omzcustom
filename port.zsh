pidportfunction() {
  lsof -n -i4TCP:$1 | grep LISTEN
}

alias port-lookup=pidportfunction

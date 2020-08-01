function g() {
  if [ "$#" -eq 0 ] ;
  then
    echo "Use g with global python script in pyenv \"genv\""
  else
    command="$HOME/.pyenv/versions/genv/bin/${@:1}"
    echo $command
    $command
  fi
}

function mypyenv() {
  select-pyenv && . ~/.select-pyenv
}

# https://github.com/pyenv/pyenv-virtualenv/issues/135
export PYENV_VIRTUALENV_DISABLE_PROMPT=1

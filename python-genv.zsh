PY_GENV_BIN=$HOME/.pyenv/versions/genv/bin

function pg() {
  if [ "$#" -eq 0 ] ;
  then
    echo "Use g with global python script in pyenv \"genv\""
  else
    command="$PY_GENV_BIN/${@:1}"
    echo $command
    $command
  fi
}

function mypyenv() {
  select-pyenv && . ~/.select-pyenv
}

function make_py_tool {
  local cookiecutter=$PY_GENV_BIN/cookiecutter
  local py_tool_template="https://github.com/audreyfeldroy/cookiecutter-pypackage.git"
  $cookiecutter $py_tool_template
}

function pg_setup() {
  local pip=$PY_GENV_BIN/pip
  echo "1. installing cookiecutter to genv"
  $pip install -U cookiecutter
}

# https://github.com/pyenv/pyenv-virtualenv/issues/135
export PYENV_VIRTUALENV_DISABLE_PROMPT=1



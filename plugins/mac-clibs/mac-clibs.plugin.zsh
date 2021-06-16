# related to pyenv install failure
# ref: https://github.com/pyenv/pyenv/issues/1746#issuecomment-736750003


# require zlib. try `brew reinstall zlib` first
# require bzip2. try `brew reinstall bzip2` first
export LDFLAGS="$LDFLAGS -L$(brew --prefix zlib)/lib -L$(brew --prefix bzip2)/lib"
export CPPFLAGS="$CPPFLAGS -I$(brew --prefix zlib)/include -I$(brew --prefix bzip2)/include"

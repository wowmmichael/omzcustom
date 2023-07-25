alias magit="emacs --eval=\"(magit-status)\""
alias crepo="cd $HOME/Codes/crepo"
alias myrepo="cd $HOME/Codes/myrepo"
alias emacsapp="/Applications/Emacs.app/Contents/MacOS/Emacs --chdir $PWD "$@" &"
alias reading="emacs $HOME/Documents/org_anize/reading.org"
alias go-reshim='asdf reshim golang && export GOROOT="$(asdf where golang)/go/" && export GOPATH="$(asdf where golang)"/packages/' # https://github.com/kennyp/asdf-golang/issues/28#issuecomment-726189750

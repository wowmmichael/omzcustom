# use rg for default find command 
# [reference](https://github.com/junegunn/fzf#respecting-gitignore)

export FZF_DEFAULT_COMMAND='rg --files' 
export FZF_DEFAULT_OPTS="--layout=reverse \
--height=50% \
--bind 'ctrl-y:execute-silent(echo {} | pbcopy)+abort' \
--preview 'bat --color=always {}'"

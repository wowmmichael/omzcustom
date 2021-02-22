alias codetb=_new_tmp_buffer
alias codediff=_diff_two_buffers


_new_tmp_buffer() {
  local t=$(mktemp -t tmp-buffer)
  code -n $t
}


_diff_two_buffers() {
  code -n --diff $1 $2
}

jqkp() {
  cat | jq --arg KEYP $1 -r '
  paths(objects) as $p
  | getpath($p)
  | with_entries(select(.key | startswith($KEYP)))
  | select(length > 0)
  | { path : ( [ $p[] | tostring ] | join(".") )
    , node : (.)
    }
  '
}

jqvp() {
  cat | jq --arg VALP $1 -r '
  paths(strings and select(. | startswith($VALP))) as $p
  | ($p[0:-1]) as $pp
  | getpath($pp)
  | { path : ( [ $pp[] | tostring ] | join(".") )
    , node : (.)
    }
  '
}

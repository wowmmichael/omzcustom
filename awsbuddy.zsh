
alias aws_assume_role=_aws_assume_role
alias aws_with_assumed_role=_aws_with_assumed_role

_assume_role_session_name="stephen-local-assume-session"

_aws_assume_role() {
  local role_arn=$1

  read _AWS_ACCESS_KEY_ID _AWS_SECRET_ACCESS_KEY _AWS_SESSION_TOKEN <<< "$(aws sts assume-role --role-arn $role_arn --role-session-name $_assume_role_session_name --duration 3600 --output text | tail -n 1 | awk '{ print $2, $4, $5 }')"

  if [[ -z "${_AWS_ACCESS_KEY_ID}" ]]; then
    echo "no key found, exit(1)!"
    return 1
  fi

  echo "Writing keys to profile: $_assume_role_session_name, now you can use aws_with_assume_role that automatically uses the profile"
  SET_ACCESS_KEY_ID_CMD=$(aws --profile ${_assume_role_session_name} configure set aws_access_key_id "${_AWS_ACCESS_KEY_ID}")
  SET_ACCESS_KEY_CMD=$(aws --profile ${_assume_role_session_name} configure set aws_secret_access_key "${_AWS_SECRET_ACCESS_KEY}")
  SET_SESS_TOKEN_CMD=$(aws --profile ${_assume_role_session_name} configure set aws_session_token "${_AWS_SESSION_TOKEN}")

  eval ${SET_ACCESS_KEY_ID_CMD}
  eval ${SET_ACCESS_KEY_CMD}
  eval ${SET_SESS_TOKEN_CMD}
}


_aws_with_assumed_role() {
  local cmd="aws --profile ${_assume_role_session_name} $@"
  echo "invoking: $cmd"
  eval ${cmd}
}

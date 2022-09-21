function aws_assume_role_and_save_to_profile() {
  role_to_assume=$1
  profile_to_write=$2

  if [[ (-z "$role_to_assume" || -z "$profile_to_write") ]]
  then
    echo "usage: aws_assume_role_and_save_to_profile role profile"
    exit 1
  fi

  source <(aws sts assume-role \
  --role-arn "${role_to_assume}" \
  --role-session-name "${profile_to_write}-session" | \
  jq --arg profile "${profile_to_write}" -r '.Credentials | @sh "aws --profile \($profile) configure set aws_access_key_id \(.AccessKeyId)\naws --profile \($profile) configure set aws_secret_access_key \(.SecretAccessKey)\naws --profile \($profile) configure set aws_session_token \(.SessionToken)\n"')

}

# Bash hook to update session variables into the current shell's environment

function _tmuxSessionUpdate {
  local previous_exit_status=$?;
  trap -- '' SIGINT;
  eval "$(tmux show-environment -s)"
  trap - SIGINT;
  return $previous_exit_status;
}

if ! [[ "${PROMPT_COMMAND:-}" =~ _tmuxSessionUpdate ]]; then
  PROMPT_COMMAND="_tmuxSessionUpdate${PROMPT_COMMAND:+;$PROMPT_COMMAND}"
fi

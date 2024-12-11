# Restore or connect to tmux session
tmux_default_session_name='default';

if which tmux &> /dev/null && [[ ! "$TERM" =~ screen ]] && [[ ! "$TERM" =~ tmux ]] && [ -z "$TMUX" ]; then
  num_attached=$(tmux ls -F"#{session_attached}" -f"#{==:#{session_name},${tmux_default_session_name}}");
  if (($? == 1))
  then
    exec tmux new -s ${tmux_default_session_name} && exit;
  else
    if ((num_attached == 0))
      then
        tmux a -t ${tmux_default_session_name};
      else
        echo "tmux session is already attached";
      fi
  fi
fi

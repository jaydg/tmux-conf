# My tmux configuration

## Install

Place the configuration where tmux looks for it:
```bash
git clone --recurse-submodules http://github.com/jaydg/tmux-conf.git ~/.config/tmux
```

Then start tmux and install the plugins with `prefix` + <kbd>I</kbd> (capital
i, as in **I**nstall).

The clipboard manager has some dependencies; either install `wl-clipboard`
when using Wayland or `xclip` when using X11.

## Integrate

**Required**: After reconnecting to the host the tmux session is running on,
the SSH agent environment variables must be updated. To achieve this, add the
following lines to your `~/.profile`:

```bash
# Bash prompt hook to update the environment from tmux' session variables
. ~/.config/tmux/prompt-command.sh
```

The environment is updated *before* bash prints a prompt; this means that
immediately after connecting the varables are not yet updated. Before using
SSH, you need to press enter once.

**Optional**: To connect to your tmux session or start a new one if none exists
automatically when logging in, add

```bash
# Restore or connect to tmux session
. ~/.config/tmux/restore.sh
```
to your `~/.profile`.

## Why?

Continuity! The main usage of this configration is to store pane configuration
and even over reboots.

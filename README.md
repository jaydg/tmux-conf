# My tmux configuration

## Install

Place the configuration where tmux looks for it:
```
git clone --recurse-submodules http://github.com/jaydg/tmux-conf.git ~/.config/tmux
```

Then start tmux and install the plugins with `prefix` + <kbd>I</kbd> (capital
i, as in **I**nstall).

The clipboard manager has some dependencies; either install `wl-clipboard`
when using Wayland or `xclip` when using X11.

## Integrate

To connect to your tmux session automatically when logging in, add

```bash
# Restore or connect to tmux session
. ~/.config/tmux/restore.sh
```
to your ~/.bashrc

## Why?

Continuity! The main usage of this configration is to store pane configuration
and even over reboots.

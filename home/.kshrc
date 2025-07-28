# common utilities
export EDITOR=/usr/local/bin/vim
export VISUAL=/usr/local/bin/vim

# sh/ksh initialization
export HISTFILE=$HOME/.ksh_history
PATH=$HOME/bin:/bin:/sbin:/usr/bin:/usr/sbin:/usr/X11R6/bin:/usr/local/bin:/usr/local/sbin
export PATH HOME TERM

# Use 0x7f (standard Backspace key code) for erase
stty erase ^?

set -o emacs

[[ -r "$HOME/.shrc" ]] && . "$HOME/.shrc"

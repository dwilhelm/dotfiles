# common utilities
export EDITOR=/usr/bin/vi
export VISUAL=/usr/local/bin/vim

# Language settings
export LANG="C"

# Set paths.
PATH=${PATH}:$HOME/bin
PYTHONPATH=${HOME}/lib/python

export PATH PYTHONPATH

# Misc
export RSYNC_RSH=ssh

# Set prompt.

#CONSOLE="vt220"
PROMPT_HOSTCOLOR='0;32m'
PROMPT_TIMECOLOR='0;36m'
PROMPT_PWDCOLOR='0;33m'

# Change the prompt for non-root users
if [ `id -u` -ne 0 ]; then

# Include the path in the title bar, if supported.
case "${TERM}" in
xterm*|rxvt*)
	PS1="\[\e]2;\h:\w\a\]"
	;;
*)
	PS1=""
	;;
esac

PS1="${PS1}\n\
\[\e[${PROMPT_HOSTCOLOR}\]\u@\h\
\[\e[${PROMPT_TIMECOLOR}\] \d \t\
\[\e[${PROMPT_PWDCOLOR}\] \w\
\[\e[0m\]\n\$ "

fi

# Use 0x7f (standard Backspace key code) for erase
stty erase ^?

set -o emacs

PKG_PATH=ftp://ftp5.usa.openbsd.org/pub/OpenBSD/5.1/packages/i386/
export PKG_PATH

# Alias definitions.
if [ -f ~/.aliases ]; then
	. ~/.aliases
fi

# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# Don't include the following in the history:
# - duplicate lines
# - lines starting with a space
export HISTCONTROL=ignoredups:ignorespace
export HISTTIMEFORMAT="%Y-%m-%d %H:%M:%S "

# Check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# Make less more friendly for non-text input files, see lesspipe(1).
[ -x /usr/bin/lesspipe ] && eval "$(lesspipe)"

# Enable color support of ls and also add handy aliases.
if [ "$TERM" != "dumb" ] && [ -x /usr/bin/dircolors ]; then
    eval "`dircolors -b`"
    alias ls='ls --color=auto'
    alias grep='grep --color=auto'
    alias egrep='egrep --color=auto'
    alias fgrep='fgrep --color=auto'
fi

# Enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
fi

# Alias definitions.
if [ -f ~/.aliases ]; then
	. ~/.aliases
fi

# Set other shell options.
if [ -f ~/.shrc ]; then
	. ~/.shrc
fi

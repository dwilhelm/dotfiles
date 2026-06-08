setopt PROMPT_SUBST
PROMPT='%F{green}%n@%m%f %F{blue}%*%f %F{yellow}%~%f
$ '
export LANG=en_US.UTF-8
export CLICOLOR=1

alias ll='ls -lAF'
alias rsync='rsync --exclude ".*.swp" --exclude ".DS_Store" --exclude "Photos Library.photoslibrary"'

# Initialize ksh, bash, or sh, as appropriate.
if [ "$SHELL" = "/bin/ksh" -a -r "$HOME/.kshrc" ]; then
	ENV="$HOME/.kshrc"
	. "$HOME/.kshrc"
elif [ -n "$BASH_VERSION" -a -r "$HOME/.bashrc" ]; then
	BASH_ENV="$HOME/.bashrc"
	. "$HOME/.bashrc"
elif [[ "$SHELL" = */bin/zsh ]] ; then
	. "$HOME/.zshrc"
else
	. "$HOME/.shrc"
fi


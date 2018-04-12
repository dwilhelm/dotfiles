# Initialize ksh, bash, or sh, as appropriate.

if [ "$SHELL" = "/bin/ksh" -a -f "$HOME/.kshrc" ]; then
	ENV="$HOME/.kshrc"
	. "$HOME/.kshrc"
elif [ -n "$BASH_VERSION" -a -f "$HOME/.bashrc" ]; then
	BASH_ENV="$HOME/.bashrc"
	. "$HOME/.bashrc"
else
	. "$HOME/.shrc"
fi


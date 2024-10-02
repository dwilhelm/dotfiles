# Initialize ksh, bash, or sh, as appropriate.
if [ "$SHELL" = "/bin/ksh" -a -r "$HOME/.kshrc" ]; then
	ENV="$HOME/.kshrc"
	. "$HOME/.kshrc"
elif [ -n "$BASH_VERSION" -a -r "$HOME/.bashrc" ]; then
	BASH_ENV="$HOME/.bashrc"
	. "$HOME/.bashrc"
else
	. "$HOME/.shrc"
fi


# rust cargo
if [ -r "$HOME/.cargo/env" ]; then
	. "$HOME/.cargo/env"
fi

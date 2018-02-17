. $HOME/.profile.local

set -o vi
alias ll='ls -lha'

# if running bash
if [ -n "$BASH_VERSION" -a -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
fi


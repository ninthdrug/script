#!/bin/bash
# install a .profile in your home directory
[ -f $HOME/.profile ] &&
    egrep -q '^# CUSTOMIZED PROFILE' $HOME/.profile &&
    exit 0

cat >$HOME/.profile <<'END'
# CUSTOMIZED PROFILE

if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

PATH=$HOME/bin:$PATH
PATH=$HOME/script:$PATH
END

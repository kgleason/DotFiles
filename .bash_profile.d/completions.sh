#!/usr/bin/env bash

# git command autocompletion script
if [ -d $(brew --prefix)/etc/bash_completion.d ]; then
	. $(brew --prefix)/etc/bash_completion.d/*
	PATH=/usr/local/bin:${PATH}
fi

# Tab completion for ssh hosts
complete -W "$(echo `cat ~/.ssh/known_hosts | cut -f 1 -d ' ' | sed -e s/,.*//g | uniq | grep -v "\["`;)" ssh

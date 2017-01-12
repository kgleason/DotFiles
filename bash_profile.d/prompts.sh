#!/usr/bin/env bash

source ~/.bash_profile.d/bash-colors

#Save the default
PS1_OLD=${PS1}

#Read in some git stuff
source ~/.bash_profile.d/git-prompt

PS1="\[$BCyan\]\u@\h:\[$Yellow\]\w\[\033[m\]\[$IPurple\]\$(__git_ps1)\[$Blue\]\$ \[$IGreen\]"

#If powerline is installed, then use it instead
if command -v powerline-daemon > /dev/null; then
	powerline-daemon -q
	POWERLINE_BASH_CONTINUATION=1
	POWERLINE_BASH_SELECT=1
	source /usr/lib/python3.6/site-packages/powerline/bindings/bash/powerline.sh
fi

#!/usr/bin/env bash

source bash-colors

#Save the default
PS1_OLD=${PS1}

#Read in some git stuff
source git-prompt

PS1="\[$Yellow\]\w\[\033[m\]\[$IPurple\]\$(__git_ps1)\[$Blue\]\$ \[$IGreen\]"
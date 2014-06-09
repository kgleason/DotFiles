#!/usr/bin/env bash

source ~/.bash_profile.d/bash-colors

#Save the default
PS1_OLD=${PS1}

#Read in some git stuff
source ~/.bash_profile.d/git-prompt

PS1="\[$BCyan\]\u@\h:\[$Yellow\]\w\[\033[m\]\[$IPurple\]\$(__git_ps1)\[$Blue\]\$ \[$IGreen\]"

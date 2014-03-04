#!/usr/bin/env bash

##################
### MY ALIASES ###
##################

# git commamands simplified
alias gst='git status'
alias gco='git checkout'
alias gci='git commit'
alias grb='git rebase'
alias gbr='git branch'
alias gadd='git add'
alias glg='git log --date-order --all --graph --format="%C(green)%h%Creset %C(yellow)%an%Creset %C(blue bold)%ar%Creset %C(red bold)%d%Creset%s"'

alias glg2='git log --date-order --all --graph --name-status --format="%C(green)%H%Creset %C(yellow)%an%Creset %C(blue bold)%ar%Creset %C(red bold)%d%Creset%s"'

# ls alias for color-mode
alias ls='ls -lhaG'

# lock computer
alias lock='/System/Library/CoreServices/"Menu Extras"/User.menu/Contents/Resources/CGSession -suspend'

# up 'n' folders
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'

# view only the files that start with a dot
alias lsdot=" ls -ld .??*"

# simple ip
alias ip='ifconfig | grep -A3 $(netstat -rn | grep UG | sed "s/  / /g" | awk "{ print \$6}") | grep "inet " | awk "{ print \$2 }"'
# more details
alias ip1="ifconfig -a | perl -nle'/(\d+\.\d+\.\d+\.\d+)/ &amp;&amp; print $1'"
# external ip
alias ip2="curl -s http://www.showmyip.com/simple/ | awk '{print $1}'"

# grep with color
alias grep='grep --color=auto'

# Hide the next command from bash history
# usage: hide && command_to_be_hidden
alias hide='history -d $((HISTCMD-1))'

# An alias to generate a version using the version scheme from work:
#YYYY.Q.MM.<Build>
alias version='echo $(date +%Y.$(((($(date +%-m)-1)/3)+1)).%m)'

# proxy tunnel
alias proxy='ssh -D 3128 -p 5320 kirk@71.201.30.223'
# ssh home
alias sshome='ssh -p 5320 kirk@71.201.30.223'

# processes
#alias ps='ps -ax'

# refresh shell
alias reload='source ~/.profile'

# open MacVim instead of vim
#alias vim=/usr/local/bin/mvim
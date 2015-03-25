#!/usr/bin/env bash

##################
### MY ALIASES ###
##################

# git commamands simplified
alias gst='git status'
alias gpll='git pull'
alias gpsh='git push'
alias gpom='git push origin master'
alias gf='git fetch'
alias grst='git fetch && git reset --hard'
alias gco='git checkout'
alias gct='git commit'
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
#alias ip='ifconfig | grep -A3 $(netstat -rn | grep UG | rev | cut -d" " -f1 | rev | sort | uniq) | grep "inet " | cut -d" " -f2'
# external ip
alias pub_ip="echo $(curl -s http://bot.whatismyipaddress.com)"

# grep with color
alias grep='grep --color=auto'

# Hide the next command from bash history
# usage: hide && command_to_be_hidden
alias hide='history -d $((HISTCMD-1))'

# An alias to generate a version using the version scheme from work:
#YYYY.Q.MM.<Build>
alias version='echo $(date +%Y.$(((($(date +%-m)-1)/3)+1)).%m)'

# proxy tunnel
alias proxy='ssh -D 3128 -p 5309 kirk@home.kirkg.us'
# ssh home
alias sshome='ssh -p 5309 kirk@home.kirkg.us'

# processes
#alias ps='ps -ax'

# refresh shell
alias reload='source ~/.profile'

# open MacVim instead of vim
#alias vim=/usr/local/bin/mvim

test "$(uname)" = "Linux" && alias bvpn='sudo vpnc-connect --enable-1des BloomVPN'

alias pgress='postgres -D /usr/local/var/postgres'

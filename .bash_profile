##################
### MY ALIASES ###
##################

# git command autocompletion script
if [ -f $(brew --prefix)/etc/bash_completion ]; then
	. $(brew --prefix)/etc/bash_completion
fi

# git commamands simplified
alias gst='git status'
alias gco='git checkout'
alias gci='git commit'
alias grb='git rebase'
alias gbr='git branch'
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

# open MacVim instead of vim
alias vim=/usr/local/bin/mvim

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
#alias proxy='ssh -D XXXX -p XXXX USER@DOMAIN'
# ssh home
#alias sshome='ssh -p XXXX USER@DOMAIN'

# processes
#alias ps='ps -ax'

# refresh shell
alias reload='source ~/.profile'

###############################
### ENVIRONMENTAL VARIABLES ###
###############################

# Change prompt
PS1_OLD=${PS1}
#export PS1='\[\033[1;34m\]\!\[\033[0m\] \[\033[1;35m\]\u\[\033[0m\]:\[\033[1;35m\]\W\[\033[0m\] \[\033[1;92m\]$(__git_ps1 "(%s)")\[\033[0m\]$ '
export PS1='\[\033[01;32m\]\u\[\033[01;34m\]@\[\033[01;31m\]\h \[\033[00;34m\]{ \[\033[01;34m\]\w \[\033[00;34m\]}\[\033[01;32m\]$ \[\033[00m\]'


# Load RVM into a shell session *as a function*
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "/usr/local/rvm/scripts/rvm"

# add to ~/.bash_profile, and close/reopen a shell.  Will autocomplete any hosts found in known_hosts.
complete -W "$(echo `cat ~/.ssh/known_hosts | cut -f 1 -d ' ' | sed -e s/,.*//g | uniq | grep -v "\["`;)" ssh

# Add the android SDK tools to the path, if it exists
[[ -d "$HOME/Library/Developer/Xamarin/android-sdk-mac_x86" ]] && PATH=${PATH}:Library/Developer/Xamarin/android-sdk-mac_x86/platform-tools/:Library/Developer/Xamarin/android-sdk-mac_x86/tools/

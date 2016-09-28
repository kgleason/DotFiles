#!/usr/bin/env bash
MYARCH=$(uname)

if [ "X${MYARCH}" == "XDarwin" ] && [ -d $(brew --prefix)/etc/bash_completion.d ]; then
	. $(brew --prefix)/etc/bash_completion.d/*
	PATH=/usr/local/bin:${PATH}
fi

# Tab completion for ssh hosts
# An explanation of the sed commands:
# sed -e /s,.*//g
# This sed will match on a comma that is followed by any number of anything else, and drop it.
# So it will convert "bitbucket.org,131.103.20.168" into "bitbucket.org"
# sed -e 's/\[\([^]]*\)\]/\1/g'
# This one is a bit more involed.
#  * \[ regex match on open bracket. [] are special chars in regex, so they need to be escaped to match on the literal
#  * (..) is a capture group. Essentially it tells the regex to remember what is in between the [] that we want to eliminate
#  * inside the capture group: [^]]*
#    -- [^]]: capture anything except for a closing bracket
#    -- * means match the previous pattern 0 or more times
#  * \] the closing bracket
# So it will match on a [] pair, grab & remember the text in the middle.
#  * \1 will take the first case of remembered text, and put it back into the stream.
complete -W "$(echo `cat ~/.ssh/known_hosts | cut -f 1 -d ' ' | sed -e s/,.*//g | sed -e 's/\[\([^]]*\)\]/\1/g' | sort | uniq`;)" ssh
#complete -W "$(echo `cat ~/.ssh/known_hosts | cut -f 1 -d ' ' | sed -e s/,.*//g | sed -e 's/\[\([^]]*\)\]/\1/g' | sort | uniq`;)" sftp
#complete -W "$(echo `cat ~/.ssh/known_hosts | cut -f 1 -d ' ' | sed -e s/,.*//g | sed -e 's/\[\([^]]*\)\]/\1/g' | sort | uniq`;)" scp

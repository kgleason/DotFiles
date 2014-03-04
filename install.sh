#!/usr/bin/env bash

# Create a variable to hold the date. We'll use this for making backups before we overwrite anything
MYDATE=$(date +%Y%m%d)

# Warn the user about what we are about to do. Give them a chance to opt out
echo "I am about to make backups of and replace some of your dotfiles. Press <Ctrl>+C to abort now. Enter to continue."
read PAUSE

for f in bash_profile bashrc gitconfig gitignore_global gvimrc
do
	if [ -e ~/.${f} ]
	then
		cp ~/.${f} ~/.${f}.${MYDATE}.orig
		rm -f ~/.${f}
	fi
	
	cp ${f} ~/.${f}
done

for d in bash_profile.d vim
do
	if [ -d ~/.${d} ]
	then
		cp -r ~/.${d} ~/.${d}.${MYDATE}.orig
		rm -rf ~/.${d}
	fi
	
	cp -r ${d} ~/.${d}
done

source ~/.bash_profile
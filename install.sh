#!/usr/bin/env bash

# Create a variable to hold the date. We'll use this for making backups before we overwrite anything
MYDATE=$(date +%Y%m%d)

#Initially I had my stuff in .gitconfig,
# But I started to see a lot of commits that weren't actually from me.
# So now this script will prompt the user for their name and e-mail address to use
function gitinfo()
{
	echo "Tell me the name you want to use for Git:"
	read GITNAME

	echo "Tell me the e-mail address you want to use for Git:"
	read GITEMAILADDRESS
}


# Warn the user about what we are about to do. Give them a chance to opt out
echo "I am about to make backups of and replace some of your dotfiles. Press <Ctrl>+C to abort now. Enter to continue."
read PAUSE

if [ -e ~/.gitconfig ]
then

	GITNAME=$(grep "name =" ~/.gitconfig | cut -d" " -f3-5)
	GITEMAILADDRESS=$(grep "email =" ~/.gitconfig | cut -d" " -f3)
	# Treat the git config file differntly from everything else.
	cp ~/.gitconfig ~/.gitconfig.orig
	rm -f ~/.gitconfig
else
	gitinfo
fi

# Use sed to change out the place holders for real values.
sed "s/%%GITNAME%%/${GITNAME}/" gitconfig | sed "s/%%GITEMAILADDRESS%%/${GITEMAILADDRESS}/" > ~/.gitconfig

#Loop through and process everything
for f in bash_profile bashrc gitignore_global gvimrc
do
	if [ -e ~/.${f} ]
	then
		cp ~/.${f} ~/.${f}.orig
		rm -f ~/.${f}
	fi

	cp ${f} ~/.${f}
done

for d in bash_profile.d vim bashrc.d
do
	if [ -d ~/.${d} ]
	then
		cp -r ~/.${d} ~/.${d}.orig
		rm -rf ~/.${d}
	fi

	cp -r ${d} ~/.${d}
done

source ~/.bash_profile

echo "I used \"${GITNAME}\" and \"${GITEMAILADDRESS}\" in your ~/.gitconfig. If those values are not correct, please edit ~/.gitconfig immediately."
echo "You may want to run \"source ~/.bash_profile\" to make sure that all of the goodness is applied to this shell."

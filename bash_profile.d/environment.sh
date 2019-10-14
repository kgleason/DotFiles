#!/usr/bin/env bash

# Path adjustments
# Add the Android SDK stuff to my path if it exists
[[ -d "$HOME/Library/Developer/Xamarin/android-sdk-mac_x86" ]] && PATH=${PATH}:${HOME}/Library/Developer/Xamarin/android-sdk-mac_x86/platform-tools:${HOME}/Library/Developer/Xamarin/android-sdk-mac_x86/tools

# Add my local bin directory to my path if it exists
[[ -d "$HOME/bin" ]] && PATH=${PATH}:~/bin

# Add some ruby environmental stuff
export RBENV_ROOT=/usr/local/var/rbenv
#which rbenv 2>&1 >> /dev/null
#RBENVX=$?
[[ -e $(which rbenv &>/dev/null) ]] && eval "$(rbenv init -)"

[[ -d $(ruby -e 'print Gem.user_dir') ]] && PATH="$PATH:$(ruby -e 'print Gem.user_dir')/bin"

# And fix the paths for homebrew to be happy
[[ -e $(which brew) &>/dev/null ]] && declare -x HOMEBREW_PATH=/usr/local/bin:/usr/local/sbin; declare -x PATH=$HOMEBREW_PATH:$PATH

# Keep less output on the screen
# This seems to break a lot of things in a WSL environment, so we'll disable it
[[ $(uname -r | grep Microsoft) ]] || export LESS="X"

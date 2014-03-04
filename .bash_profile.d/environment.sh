#!/usr/bin/env bash

# Path adjustments
# Add the Android SDK stuff to my path if it exists
[[ -d "$HOME/Library/Developer/Xamarin/android-sdk-mac_x86" ]] && PATH=${PATH}:${HOME}/Library/Developer/Xamarin/android-sdk-mac_x86/platform-tools/:${HOME}/Library/Developer/Xamarin/android-sdk-mac_x86/tools/

# Add my local bin directory to my path if it exists
[[ -d "$HOME/bin" ]] && PATH=${PATH}:~/bin
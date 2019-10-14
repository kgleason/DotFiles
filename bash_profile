#!/usr/bin/env bash

# If this looks like a WSL shell, then read in the default bashrc from Ubuntu
[[ $(uname -r | grep Microsoft) ]] && . ${HOME}/.bashrc.d/wsl_bashrc

for f in ${HOME}/.bash_profile.d/*.sh
do
	. ${f}
done

#!/usr/bin/env bash

for f in $HOME/.bash_profile.d/*.sh
do
	. ${f}
done

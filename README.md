#DotFiles

Some of the more important dot files from my homedirectory.
I've removed the dots from the names so that they do not thump any existing files.

I've also split my .bash_profile out into a .bash_profile.d directory. Makes it easier to find things when I want to tweak them.

Running ./install.sh should put all of these files in the right place for you. Of course if you know what you are doing, then you will probably be better off doing this manually.

##Included files

###bashrc
Pretty basic .bashrc. If we are running interactively, then go ahead an process everything. If it is not interactive, then skip the processing. Really probably don't want to use most of this stuff in scripts anyhow.

###bash_profile
.bash_proilfe is read when bash is run as a login shell. (Right?) So this file will just loop through all of the .sh files in the bash_profile.d directory.

###bash_profile.d
####aliases.sh
A list of all of the command shortcuts I use. And some I forget are in there.

####completions.sh
A couple of custom autocompletions. 

#### prompts.sh
Where my bash prompt is set. I finally found one that I like.

####environments.sh
A few environmental settings.

####bash-colors
A bunch of variables to make the prompt in prompts.sh easier to read. 

####git-prompt
Some git goodness to put some git info into the prompt.

### gitconfig
My global gitconfig. You should definitely change the e-mail address and name. Otherwise you'll probably set some really strange errors.

###gitignore_global
A list of files that git should always ignore.

###gvimrc
vimrc for MacVIM. 

###vim
vim themes. Gotta love the solarized dark, right?
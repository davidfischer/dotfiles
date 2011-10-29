##########################################################################
# SHELL Environment
##########################################################################

# Test if this is an interactive shell. Only set prompts if it is
if [ -t 0 ]
then
	# Sets the shell prompt
	export PS1="[\[$(tput bold)\]\[$(tput setaf 2)\]\u@\h\[$(tput sgr0)\] \W]% "

	if [ `uname -s` == "Darwin" ]
	then
		# Mac ls works slightly differently
		alias ll="ls -lhFG"
		alias la="ls -lahFG"
	else
		alias ll="ls -lhF --color=auto"
		alias la="ls -lahF --color=auto"
	fi
fi

# Check if 'vim' exists and alias it if possible
if [ -f "/usr/bin/vim" ]
then
	alias vi="/usr/bin/vim"
fi

# ignore duplicates in bash history
export HISTCONTROL=ignoredups

##########################################################################
# Source Control Environments
##########################################################################
export SVN_EDITOR="vi"
export GIT_EDITOR=$SVN_EDITOR

##########################################################################
# Miscellaneous Settings
##########################################################################
#export PYTHONDONTWRITEBYTECODE=1

##########################################################################
# Local Environment
# 
# Put machine specific environment configuration into ~/.profile.local
##########################################################################
if [ -f ~/.profile.local ]
then
	. ~/.profile.local
fi


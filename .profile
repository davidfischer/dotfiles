#############################################################################
# SHELL Environment
#############################################################################

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

# Check if 'vim' exists and alias it if possible
if [ -f "/usr/bin/vim" ]
then
	alias vi="/usr/bin/vim"
fi

#############################################################################
# Source Control Environments
#############################################################################
export SVN_EDITOR="vi"
export GIT_EDITOR=$SVN_EDITOR


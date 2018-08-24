##########################################################################
# SHELL Environment
##########################################################################

export COLOR_NC='\e[0m' # No Color
export COLOR_WHITE='\e[1;37m'
export COLOR_BLACK='\e[0;30m'
export COLOR_BLUE='\e[0;34m'
export COLOR_LIGHT_BLUE='\e[1;34m'
export COLOR_GREEN='\e[0;32m'
export COLOR_LIGHT_GREEN='\e[1;32m'
export COLOR_CYAN='\e[0;36m'
export COLOR_LIGHT_CYAN='\e[1;36m'
export COLOR_RED='\e[0;31m'
export COLOR_LIGHT_RED='\e[1;31m'
export COLOR_PURPLE='\e[0;35m'
export COLOR_LIGHT_PURPLE='\e[1;35m'
export COLOR_BROWN='\e[0;33m'
export COLOR_YELLOW='\e[1;33m'
export COLOR_GRAY='\e[0;30m'
export COLOR_LIGHT_GRAY='\e[0;37m'

# Test if this is an interactive shell. Only set prompts if it is
if [ -t 0 ]
then
	# Sets the shell prompt
	export PS1="[\t][\[$(tput bold)\]\[$(tput setaf 4)\]\u@\h\[$(tput sgr0)\] \W \[$(tput bold)\]\[$(tput setaf 1)\]\${?##0}\[$(tput sgr0)\]]% "

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
alias runserver2="python -m SimpleHTTPServer 5000"
alias runserver="python -m http.server 5000"

##########################################################################
# Local Environment
# 
# Put machine specific environment configuration into ~/.profile.local
##########################################################################
if [ -f ~/.profile.local ]
then
	. ~/.profile.local
fi


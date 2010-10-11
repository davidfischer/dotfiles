#############################################################################
# SHELL Environment
#############################################################################

# Sets the shell prompt
export PS1="[\[$(tput bold)\]\[$(tput setaf 2)\]\u@\h\[$(tput sgr0)\] \W]% "

alias ll="ls -lh --color=auto"
alias la="ls -lah --color=auto"
alias vi="vim"

#############################################################################
# Source Control Environments
#############################################################################
export SVN_EDITOR="vi"
export GIT_EDITOR=$SVN_EDITOR


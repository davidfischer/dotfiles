##########################################################################
# Z SHELL
#
# This is my default shell instead of bash.
##########################################################################

# Set zsh history file length
setopt INC_APPEND_HISTORY
setopt EXTENDED_HISTORY
export HISTTIMEFORMAT="[%F %T] "
export HISTFILE=~/.zsh_history
export HISTSIZE=999999
export SAVEHIST=999999

# Load completions
rm -f ~/.zcompdump
autoload -U compinit
compinit


##########################################################################
# Set the prompt
##########################################################################
# Add version control information
# http://zsh.sourceforge.net/Doc/Release/User-Contributions.html#Version-Control-Information
autoload -Uz vcs_info
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst
zstyle ':vcs_info:*' actionformats '%F{5}(%f%s%F{5})%F{3}-%F{5}[%F{2}%b%F{3}|%F{1}%a%F{5}]%f '
zstyle ':vcs_info:*' formats '%F{5}(%f%s%F{5})%F{3}-%F{5}[%F{2}%b%F{5}]%f '
RPROMPT=\$vcs_info_msg_0_


autoload -U colors && colors
# http://zsh.sourceforge.net/Doc/Release/Prompt-Expansion.html#Prompt-Expansion
PROMPT="[%*][%B%F{green}%n%f@%F{blue}%m%f%b %1~%(?.. %B%F{red}%?%f%b)] \$ "


##########################################################################
# Source control environments
##########################################################################
export SVN_EDITOR="vi"
export GIT_EDITOR=$SVN_EDITOR


##########################################################################
# Miscellaneous aliases
##########################################################################
alias runserver="python3 -m http.server 5000"
alias runserver2="python -m SimpleHTTPServer 5000"
alias runserver3="python3 -m http.server 5000"

if [[ $(uname -s) = "Darwin" ]] ; then
    # Mac/BSD ls works slightly differently
    alias ll="ls -lhFG"
    alias la="ls -lahFG"
else
    alias ll="ls -lhF --color=auto"
    alias la="ls -lahF --color=auto"
fi


##########################################################################
# Shell Completions
##########################################################################
if type brew &>/dev/null; then
    FPATH=$(brew --prefix)/share/zsh/site-functions:$FPATH
fi


##########################################################################
# Local Environment
#
# Put machine specific environment configuration into ~/.profile.local
##########################################################################
if [ -f ~/.profile.local ]
then
    source ~/.profile.local
fi

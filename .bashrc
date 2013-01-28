# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Source Git Completion
source bin/git_completion.sh


# set PS1
PS1='[\u@\h \W$(__git_ps1 " (%s)")]\$ '

# set configuration
set o vi
set editing-mode vi
set keymap vi

# User specific aliases and functions

alias ll='ls -la'
alias mytree="ls -R | grep ":$" | sed -e 's/:$//' -e 's/[^-][^\/]*\//--/g' -e 's/^/   /' -e 's/-/|/'"
alias tree="ls -R | grep ":$" | sed -e 's/:$//' -e 's/[^-][^\/]*\//--/g' -e 's/^/   /' -e 's/-/|/'"

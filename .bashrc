# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Source Git Completion
source bin/git_completion.sh

SOP_HOME=/u01/app/sop
JAVA_HOME=/usr/lib/jvm/java-1.6.0
ANT_HOME=/usr/share/ant
JBOSS_HOME=$SOP_HOME/jboss/jboss-soa-p-5/jboss-as
HORNETQ_HOME=/rdm_journal/jboss/hornetq-2.2.2.Final
HTTP_PROXY=http://web-proxy.houston.hp.com:8080

SOP_AUTOMATION_HOME=/u01/downloads.SOP_Automation

PATH=$PATH:/sbin
PATH=$PATH:/usr/sbin
PATH=$PATH:$JAVA_HOME/bin
PATH=$PATH:$JBOSS_HOME/bin
PATH=$PATH:$ANT_HOME/bin
PATH=$PATH:$SOP_HOME/bplaneProvision/bin

#  will export HOSTNAME has a work-around for ant not picking up this environment variable when executing remotely
export JAVA_HOME JBOSS_HOME ANT_HOME HORNETQ_HOME SOP_HOME HTTP_PROXY MOD_CLUSTER_HOME HOSTNAME

# set PS1
PS1='[\u@\h \W$(__git_ps1 " (%s)")]\$ '

# set configuration
set o vi
set editing-mode vi
set keymap vi

# User specific aliases and functions

alias ll='ls -la'
alias mytree="ls -R | grep ":$" | sed -e 's/:$//' -e 's/[^-][^\/]*\//--/g' -e 's/^/   /' -e 's/-/|/'"
alias synchome="~/hp_utility/invokeSyncAllFrom77.sh"
alias sophome="cd $SOP_HOME;ll"
alias automationhome="cd $SOP_AUTOMATION_HOME;ll"
alias tree="ls -R | grep ":$" | sed -e 's/:$//' -e 's/[^-][^\/]*\//--/g' -e 's/^/   /' -e 's/-/|/'"

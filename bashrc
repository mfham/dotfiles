# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions

PATH=$PATH:/usr/local/bin
alias e=$HOME/local/bin/emacs
alias rm='rm -i'
export TERM="xterm-256color"

alias rspec="rspec -cfd"
alias ll='ls -l'
alias la='ls -a'


# history
function share_history {
    history -a
    history -c
    history -r
}
PROMPT_COMMAND='share_history'
shopt -u histappend

export HISTSIZE=99999
export HISTIGNORE=fg*:bg*:history*:cd*
export HISTCONTROL=ignoredups

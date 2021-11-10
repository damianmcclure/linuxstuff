#
# ~/.bashrc
#

[[ $- != *i* ]] && return

alias ls='ls --color=auto'

PS1='\[33[01;32m\]\u@\h\[33[00m\]:\[33[01;34m\]\W\[33[00m\]\$ '

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

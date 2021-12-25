#
# ~/.bashrc
#

[[ $- != *i* ]] && return

alias ls='ls --color=auto'

PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\W\[\033[00m\]\$ '

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

export PATH="/home/$USER/.local/bin:$PATH"

#
# ~/.bashrc
#

# If not running interactively, don't do anything

export LD_LIBRARY_PATH=.:$LD_LIBRARY_PATH

[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

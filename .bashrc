#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1='[\u@\h \W]\$ '

alias ls='ls --color=auto'
alias rm='rm -i'
alias mv='mv -i'
alias cp='cp -i'
alias grep='grep --color=auto'


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

# compile one file with common flags
# ref. https://www.gnu.org/software/bash/manual/html_node/Shell-Parameter-Expansion.html
function cco() {
    cc -Wall -Wextra -std=c11 -o "${1%%.*}" $CFLAGS $1
}

function cpo() {
    c++ -Wall -Wextra -std=c++14 -o "${1%%.*}" $CFLAGS $1
}

#!/bin/bash

# add to PATH
export PATH=$PATH:/usr/lib64:/usr:/usr/bin:/usr/sbin:/sbin:.

# Your place for hosting Git repos. I use this for private repos.
export GIT_HOSTING='git@git.domain.com'

# Set my editor and git editor
export GIT_EDITOR='/usr/bin/vim'

# Don't check mail when opening terminal.
unset MAILCHECK

# Change this to your console based IRC client of choice.
export IRC_CLIENT='irssi'

# Set this to the command you use for todo.txt-cli
export TODO="t"

# for tmuxinator
export EDITOR=/bin/vim

# Set vcprompt executable path for scm advance info in prompt (demula theme)
# https://github.com/xvzf/vcprompt
#export VCPROMPT_EXECUTABLE=~/.vcprompt/bin/vcprompt

test -s ~/.alias && . ~/.alias || true
alias lm='ls -ahlF --color | more '
alias bitlbee='sudo /usr/sbin/bitlbee'
alias ll='ls -lh'
alias grep='grep --color'

PS1='\[\e[1;34m\]\@\[\e[m\] \[\e[0;32m\]\u\[\e[m\]\[\e[0;34m\]@\[\e[m\]\[\e[1;32m\]\h\[\e[m\] \[\e[1;34m\]\w\[\e[m\] \[\e[1;32m\]\$\[\e[m\] '
#export TITLEBAR='\[\033]0;\u@\h:\w \007\]'

[[ -s $HOME/.tmuxinator/scripts/tmuxinator ]] && source $HOME/.tmuxinator/scripts/tmuxinator

# Generate a random password
#  $1 = number of characters; defaults to 32
#  $2 = include special characters; 1 = yes, 0 = no; defaults to 1
function randpass() {
  [ "$2" == "0" ] && CHAR="[:alnum:]" || CHAR="[:graph:]"
      cat /dev/urandom | tr -cd "$CHAR" | head -c ${1:-32}
         echo
  }

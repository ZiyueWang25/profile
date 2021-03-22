# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# color
# PS1="[\d \t]\u@\h\n\w\$"
export PS1="[\d \A]\[$(tput sgr0)\]\[\033[38;5;9m\]\h\[$(tput sgr0)\]@\[$(tput sgr0)\]\[\033[38;5;4m\]\u\[$(tput sgr0)\]\n\[$(tput sgr0)\]\[\033[38;5;10m\]\w\[$(tput sgr0)\]>\[$(tput sgr0)\]"
# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
#shopt -s globstar

# some more ls aliases
alias ls='ls --color=auto'
alias ll='ls -alF --color=auto'
alias la='ls -A --color=auto'
alias l='ls -CF --color=auto'
alias install='sudo apt install'
alias c='clear'
alias mv='mv -i'
alias update='sudo apt update'
alias upgrade='sudo apt update && sudo apt dist-upgrade'
alias h='history'
alias jupyter='/bin/jupyter'
alias vf='cd /media/vincentwang/b73984e2-7551-47ca-9480-1247210afa00/Vincent/'
alias q='QHOME=~/q rlwrap -r ~/q/l64/q'
alias developer='source /home/vincentwang/developer/config/config.profile; q /home/vincentwang/developer/launcher.q_ '

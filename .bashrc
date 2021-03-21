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
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
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
# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# add path to conda
# export PATH="$HOME/miniconda3/bin:$PATH"  # commented out by conda initialize

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/vincentwang/miniconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/vincentwang/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/home/vincentwang/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/vincentwang/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<


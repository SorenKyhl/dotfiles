#!/bin/bash

# linux command customization
alias ..='c ..'
alias cd..='c ..'
alias ls='ls -X --group-directories-first --color=auto'
alias ll='ls -alFh'
alias la='ls -A'
alias l='ls -CF'
alias dir='dir --color=auto'
alias vdir='vdir --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

# file system aliases
alias duh='du -h | sort -rh | head -20' # quickly see largest files in folder
alias pstree='pstree -pa'
alias df='df -h'
alias hdd='cd /media/skyhl/localBackup'
export hdd=/media/skyhl/localBackup

# tmux correct colors
alias tmux="TERM=screen-256color-bce tmux"

# projects
alias ticg='pushd ~/Documents/TICG-chromatin'
alias ticg-src='pushd ~/Documents/TICG-chromatin/src'
alias ticg-cp='cp ~/Documents/TICG-chromatin/src/TICG-engine .'
alias ticg-cp-debug='cp ~/Documents/TICG-chromatin/src/TICG-debug .'
alias ticg-run='python ~/Documents/TICG-chromatin/examples/snippets/simulate_current_directory.py'
alias pylib-src='pushd ~/Documents/TICG-chromatin/pylib'
alias tailsims='pushd /mnt/MC/TICG/production'

# ip address stuff
alias midway='ssh -X skyhl@midway2.rcc.uchicago.edu'
alias midway3='ssh -X skyhl@midway3.rcc.uchicago.edu'
macbook='192.168.50.107'
ip='128.135.132.24'

# applications
alias jupyter-remote='jupyter lab --no-browser --ip=${ip}' 
alias htop='htop -d 1'
alias awk='gawk'
alias python='python3'
alias pip3='pip3'
alias v='vim'
alias open='xdg-open'  # mimic open command on mac
alias lmp='~/../../usr/bin/lammps'
alias ovito='/home/skyhl/Documents/applications/ovito-pro-3.7.11-x86_64/bin/ovito'
export D_1CPN=/home/skyhl/Documents/1cpn
. "$HOME/.cargo/env"


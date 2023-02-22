
# resolves issue: can't scp when a tmux session
# https://unix.stackexchange.com/questions/267416/tmux-check-interfering-with-scp-usage
[[ $- != *i* ]] && return
[[ $- == *i* ]] || return

# Alias definitions - keep aliases in separate file
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# remap capslock to delete to save my right wrist
setxkbmap -option caps:backspace
xset r 66

# powerline status
powerline-daemon -q
POWERLINE_BASH_CONTINUATION=1
POWERLINE_BASH_SELECT=1
. /home/skyhl/.local/lib/python3.6/site-packages/powerline/bindings/bash/powerline.sh

# color output of ls and other commands
#export TERM=xterm-256color
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
fi

# like normal cd, but list directory contents after cd'ing in
c() {
    cd "${@}" \
    && ls --color=always -C 
}

# if there is a job running in the background, cd into this directory
cdjob () { 
    pid=$(jobs -p $1);
    d=$(readlink /proc/$pid/cwd);
    cd "$d"
}

# bash history stuff
HISTSIZE=1000
HISTFILESIZE=2000
HISTCONTROL=ignoreboth
export HISTIGNORE="fg"
export HISTIGNORE="ls"
shopt -s histappend # append to the history file, don't overwrite it

# node version manager
export NVM_DIR="/home/skyhl/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/skyhl/anaconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/skyhl/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/home/skyhl/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/skyhl/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<


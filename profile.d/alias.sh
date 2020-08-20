#if [ "$(uname)" == "Darwin" ]; then
#  # Do something under Mac OS X platform
#  #Add colors
#  export CLICOLOR=1
#  export LSCOLORS=GxFxCxDxBxegedabagaced
##elif [ $(uname) = "Linux" ]; then
##  export LS_OPTIONS=' --color=auto'
#  #export GREP_OPTIONS='--color=auto'
#fi



#Start with my aliasses
alias dusch="du -sch * | sort -k1 -h "
alias hmux='tmux attach-session -t hb || tmux new-session -s hb'
alias g='git'
alias free="free -m"
alias df="df -h"
alias vi="vim"
#alias ll="ls -hlF --time-style=+%Y-%m-%d.%H:%M:%S"
alias ll="ls -hlF"
alias mkdir="mkdir -p"
alias ..='cd ..' # Go up one directory
alias ...='cd ../..' # Go up two directories
alias ....='cd ../../..' # Go up three directories
alias cpp='rsync --progress -ah'
alias doch='sudo "$BASH" -c "$(history -p !!)"'
alias ip='ip -color'
alias ips='ip -brief a'

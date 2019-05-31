if [ "$(uname)" == "Darwin" ]; then
  # Do something under Mac OS X platform
  #Add colors
  export CLICOLOR=1
  export LSCOLORS=GxFxCxDxBxegedabagaced
elif [ $(uname) = "Linux" ]; then
  export LS_OPTIONS=' --color=auto'
#  export GREP_OPTIONS='--color=auto'
fi



#Start with my aliasses
alias g='git'
alias free="free -m"
alias df="df -h"
alias vi="vim"
alias ll="ls -hlF"
alias mkdir="mkdir -p"
alias ..='cd ..' # Go up one directory
alias ...='cd ../..' # Go up two directories
alias ....='cd ../../..' # Go up three directories
alias cpp='rsync --progress -ah'
alias hmux='tmux attach-session -t hb || tmux new-session -s hb'
alias dusch="du -sch * | sort -k1 -h "
alias doch='sudo $(history -p !-1)'

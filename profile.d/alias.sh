if [ "$(uname)" == "Darwin" ]; then
  # Do something under Mac OS X platform        
  #Add colors
  export CLICOLOR=1
  export LSCOLORS=GxFxCxDxBxegedabagaced
elif [ $(uname) = "Linux" ]; then
  alias ls="ls --color=auto"
fi



#Start with my aliasses
alias ll="ls -hlF"
alias mkdir="mkdir -p"
alias ..='cd ..' # Go up one directory
alias ...='cd ../..' # Go up two directories
alias ....='cd ../../..' # Go up three directories

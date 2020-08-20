###############################################################################
#
#             A L I A S S E S
#
###############################################################################
alias dusch="du -sch * | sort -k1 -h "
alias hmux='tmux attach-session -t hb || tmux new-session -s hb'
alias g='git'
alias free="free -m"
alias df="df -h"
alias vi="vim"
#alias ll='ls -hlGF'
alias ll="gls --color=auto -lhF --group-directories-first"
alias mkdir="mkdir -p"
alias ..='cd ..' # Go up one directory
alias ...='cd ../..' # Go up two directories
alias ....='cd ../../..' # Go up three directories
alias cpp='rsync --progress -ah'
#alias -g doch='sudo "$BASH" -c "$(history -p !!)"'
alias doch='sudo $(fc -ln -1)'
alias k="kubectl"
alias d="docker"
alias hist="history -i 1"
alias cat="bat"
alias -g G='| grep'


# Aliasses for jumping around
alias dev="cd ~/dev/"

#Aliasses for applications
alias mail="open -a /Applications/Microsoft\ Outlook.app"

#Suffix aliasses for zsh
# Azure CLI files
alias -s azcli=code

# Markdown files
alias -s md=code

# JSON files
alias -s json=code

# bulk association
alias -s {html,txt,log}=code

# macOS aliasses
if [[ $OSTYPE == darwin* ]]; then
   alias -g flushdns='dscacheutil -flushcache'
fi

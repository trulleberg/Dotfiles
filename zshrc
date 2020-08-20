# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

source /usr/local/opt/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

###############################################################################
#
#             A L I A S S E S
#
###############################################################################
alias -g dusch="du -sch * | sort -k1 -h "
alias -g hmux='tmux attach-session -t hb || tmux new-session -s hb'
alias -g g='git'
alias -g free="free -m"
alias -g df="df -h"
alias -g vi="vim"
alias -g ll='ls -hlGF'
alias -g mkdir="mkdir -p"
alias -g ..='cd ..' # Go up one directory
alias -g ...='cd ../..' # Go up two directories
alias -g ....='cd ../../..' # Go up three directories
alias -g cpp='rsync --progress -ah'
alias -g doch='sudo "$BASH" -c "$(history -p !!)"'


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


###############################################################################
#
#             F U N C T I O N S
#
###############################################################################

function extract () {
    if [ -f $1 ] ; then
      case $1 in
        *.tar.bz2)   tar xjf $1     ;;
        *.tar.gz)    tar xzf $1     ;;
        *.bz2)       bunzip2 $1     ;;
        *.rar)       unrar e $1     ;;
        *.gz)        gunzip $1      ;;
        *.tar)       tar xf $1      ;;
        *.tbz2)      tar xjf $1     ;;
        *.tgz)       tar xzf $1     ;;
        *.zip)       unzip $1       ;;
        *.Z)         uncompress $1  ;;
        *.7z)        7z x $1        ;;
        *)     echo "'$1' cannot be extracted via extract()" ;;
      esac
    else
        echo "'$1' is not a valid file"
    fi
}

function mkdircd () { mkdir "$@" && eval cd "\"\$$#\""; }

###############################################################################
#
#             A U T O C O M P L E T E
#
###############################################################################

# Highlight the current autocomplete option
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"

# Better SSH/Rsync/SCP Autocomplete
zstyle ':completion:*:(scp|rsync):*' tag-order ' hosts:-ipaddr:ip\ address hosts:-host:host files'
zstyle ':completion:*:(ssh|scp|rsync):*:hosts-host' ignored-patterns '*(.|:)*' loopback ip6-loopback localhost ip6-localhost broadcasthost
zstyle ':completion:*:(ssh|scp|rsync):*:hosts-ipaddr' ignored-patterns '^(<->.<->.<->.<->|(|::)([[:xdigit:].]##:(#c,2))##(|%*))' '127.0.0.<->' '255.255.255.255' '::1' 'fe80::*'

# Allow for autocomplete to be case insensitive
zstyle ':completion:*' matcher-list '' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]}' \
  '+l:|?=** r:|?=**'
#
# Initialize the autocompletion
autoload -Uz compinit && compinit -i
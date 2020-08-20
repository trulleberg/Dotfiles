# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=10000
HISTFILESIZE=20000
#Ignores entries with space in the front and Dupplicates
HISTCONTROL=ignoreboth
# Ignores these commands
HISTIGNORE="ls:ll:w:who:exit:cd:cd ..:pwd"
HISTTIMEFORMAT='%F %T ' 

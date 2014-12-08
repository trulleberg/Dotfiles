#!/usr/bin/env bash

# Path to the bash it configuration
export BASH_IT=$HOME/.bash_it

# Lock and Load a custom theme file
# location /.bash_it/themes/
export BASH_IT_THEME='hbpure'

# Your place for hosting Git repos. I use this for private repos.
export GIT_HOSTING='git@localhost'

# Don't check mail when opening terminal.
unset MAILCHECK

# Load Bash It
source $BASH_IT/bash_it.sh

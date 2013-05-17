
## Aliases tell bash to do the thing in quotes when you type the thing before the equals
alias ls='ls -Glah'
alias whereami='pwd'
alias editprompt='pico ~/.bashrc'

## Export sets varables that shell programs can use
export CLICOLOR="YES"
export LSCOLORS="ExGxFxdxCxDxDxhbadExEx"

## PS1 is your main prompt.  Find a cheatsheet here: http://ss64.com/bash/syntax-prompt.html
PS1='\[\e[0;31m\] \[\e[m\] \[\e[0;33m\]${PWD##*/}\[\e[m\] '
#PS1="\w\$ "
#PS1="# "
#PS1="\d \T"

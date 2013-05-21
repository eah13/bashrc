## Aliases tell bash to do the thing in quotes when you type the thing before the equals
## Below are some examples.  Try adding some that make your life more convenient...
alias ls='ls -Glah'
alias whereami='pwd'
alias editprompt='pico ~/.bashrc'

## Export sets varables that shell programs can use
## These tell my terminal to print colors
export CLICOLOR="YES"
export LSCOLORS="ExGxFxdxCxDxDxhbadExEx"

## PS1 is your main prompt.  See https://github.com/eah13/bashrc for more about prompts.
PS1='\[\e[0;36m\]⚡\[\e[m\] \[\e[0;33m\]${PWD##*/}\[\e[m\] \[\e[0;36m\] \u \[\e[m\] '


## This code reads in script.sh.  
## Run any script you want whenever your prompt gets printed, for convenience or fun.
source script.sh

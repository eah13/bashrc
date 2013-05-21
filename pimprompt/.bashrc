#
#   Pimped Bash Prompts
#       (C) Elliott Hauser
#       CC-0 license
#


## PS1 is your main prompt.  It's a variable that bash evaluates everytime you need a prompt
##  You can change your prompt at anytime like this (don't type the '>'- thats your prompt):
##      >  export PS1="new prompt goes here >"
##  You'll then see this:
##      new prompt goes here >
##  You can make PS1 into pretty much any text you want.  You can also color it.  Read on...

## Instead of typing that at your command line you can also run a script (like this one you're
##  reading) to do it for you.
export PS1="new prompt > "  
## The export is just for completeness, indicating that the variable will be available globally

## Comment the 'export PS1..' line above by placing a '#' in front of it.
## This tells bash not to execute it.  From now on, make sure you only have one PS1 line 
## uncommented at a time.  


## OK now you have a new prompt but it's not very exciting.  Let's add some color.
## Uncomment the below by deleting the '#' from in front of the line.
#export PS1="\e[0;35m new \e[1;32mprompt\e[1;36m >\e[0m "

## Color is cool, but bash can print all sorts of helpful information in your prompt.
## For Instance:
## - \u = the current user name
## - \d = the current date
## - \@ = the current time (in AM/PM format)
## - \! = the history number of this command.  Type !42 to run command 42 again.
## - \w = the current working directory
## - \n = a newline character (return)
##
## Uncomment this to see some of this information in action:
#export PS1="\u \d \@ \n \w \! > "


## find more shortcuts that bash knows here: http://ss64.com/bash/syntax-prompt.html

## Now you're ready to combine colors AND information.

## For simplicity, let's read in some color variables to help us.
## Variables are a great way to make bash scripting easier and more readable. 
source ./colors.sh
## Look in that file for details.  Color names are pretty self explanatory, but check
## out all the cool underline and background color options.
## More color info is here: http://tldp.org/HOWTO/Bash-Prompt-HOWTO/x329.html

## Bold user name in bold green with underlined yellow working directory
#export PS1="$BGreen\u $UYellow \w $Color_Off "


##
## Advanced Prompts
##
## These prompts use if-then statements or other cool stuff to make prompts more helpful
## Found here: http://www.maketecheasier.com/8-useful-and-interesting-bash-prompts/2009/09/04

## Smiley frowny
## This prompt is smiley ^_^ when the last command was successful, and a red @_@ when things go wrong
## It's cued off of the exit code of the previous command.
#PS1="\`if [ \$? = 0 ]; then echo \[\e[33m\]^_^\[\e[0m\]; else echo \[\e[31m\]O_O\[\e[0m\]; fi\`[\u@\h:\w]\\$ "

## Display File Information
##  This gives you lots of extra information about the files in your directory.
#PS1="\n\[\e[30;1m\]\[\016\]l\[\017\](\[\e[34;1m\]\u@\h\[\e[30;1m\])-(\[\e[34;1m\]\j\[\e[30;1m\])-(\[\e[34;1m\]\@ \d\[\e[30;1m\])->\[\e[30;1m\]\n\[\016\]m\[\017\]-(\[\[\e[32;1m\]\w\[\e[30;1m\])-(\[\e[32;1m\]\$(/bin/ls -1 | /usr/bin/wc -l | /bin/sed 's: ::g') files, \$(/bin/ls -lah | /bin/grep -m 1 total | /bin/sed 's/total //')b\[\e[30;1m\])--> \[\e[0m\] "



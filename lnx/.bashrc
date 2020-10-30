# this file is processed on each interactive invocation of bash

# avoid problems with scp -- don't process the rest of the file if non-interactive
[[ $- != *i* ]] && return

PS1="\[\e[0;36m\]\u\[\e[00m\]@\[\e[0;32m\]`shorthostname`\[\e[00m\]::\[\e[0;34m\]\W \[\e[0;35m\]\! \[\e[00m\]\$ "
HISTSIZE=50

alias mail=mailx

PATH=${PATH}:/p/android-sdk/bin


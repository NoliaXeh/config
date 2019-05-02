
[[ $- != *i* ]] && return

export LANG=en_US.utf8
export NNTPSERVER="news.epita.fr"

LS_COLORS=$LS_COLORS:'di=0;35:' ; export LS_COLORS

function compile
{
    echo $(g++ -Wall -Werror -pedantic -Werror -std=c++17 -o $1 $2 $3 $4 $5 $6 $7 $8 $9)
    return $?
}

export EDITOR=vim

alias ls='ls --color'
alias la='ls -a'
alias i3lock='~/afs/myscripts/custom_lock/custom_lock.sh'
alias stylecheck='~/afs/myscripts/check_style/check.sh'
alias term-size='~/afs/myscripts/term-size.sh'
alias load='cd $(cat ~/tmp 2> /dev/null)'
alias save='pwd > ~/tmp'
alias view='vim -R'
alias logout='pkill .+'
alias rtc='~/afs/myscripts/logo-1.1.0-rtc'
alias gsl='git shortlog'
alias gslc='python ~/afs/myscripts/git-short-log-color.py'
alias code='~/afs/vs-code/VSCode-linux-x64/code'
alias gcl="git ls-files | xargs -n1 git blame --line-porcelain | sed -n 's/^author //p' | sort -f | uniq -ic | sort -nr"
alias gpp='git pull && git push'
alias gls='git ls-files'

function addcomgetpush {
    git add $1 > /dev/null &&
    git commit -m "$2" > /dev/null &&
    git rev-parse HEAD &&
    git push 2> /dev/null; 
}

#CUSTOMISATION
FONT='\[\33]50;%s\007xft:DejaVu Sans Mono-10\]'
BCG='\[\e[48;5;240m\]'$FONT
BCG=''
BLUE="\[\033[0;36m\]$BCG"
RED="\[\033[0;36m\]$BCG"
GOLD="\[\033[0;33m\]$BCG"
GREEN="\[\033[0;32m\]$BCG"
NCL="\[\033[0m\]$BCG"

precol="\[\033[38;5;"
BLUE=$precol"73m\]"
RED=$precol"203m\]"
GOLD=$precol"173m\]"
GREEN=$precol"106m\]"
WHITE=$precol"250m\]"
NCL=$WHITE
PS1=$NCL'['$BLUE'$?'$NCL']['$GREEN'\D{%H:%M:%S}'$NCL']'$GOLD'\u'$NCL'-'$BLUE'\W'$NCL' \$ '
#echo -n '' >> ~/tm >> ~/tmp
load 2> /dev/null
#xrdb -load ~/.Xdefaults

export PGDATA="$HOME/postgres_data"
export PGHOST="/tmp"

# Symbolic links to folders in the ~/symlink folder
export CDPATH=~/symlinks
alias cd='cd -P'

# Awk shortcuts
alias awks="awk -vFPAT='([^;]*)|(\"[^\"]+\")' -vOFS=';'"
alias awkc="awk -vFPAT='([^,]*)|(\"[^\"]+\")' -vOFS=','"

# look at csv
alias look="csvlook -I | less -S"

#### VIM USE ######
# Read-only nvim
alias view="nvim -M"
alias copy="xclip -selection c"


# Switching keyboards
alias azerty='setxkbmap fr'
alias bepo='setxkbmap fr bepo'

# History research
stty -ixon

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# colored GCC warnings and errors
# export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

alias tx=tmuxinator
alias ipython=ipython3

alias o=xdg-open
alias v=nvim

alias python=python3
alias python3=python3

alias pmd="/home/pierre/pmd-bin-6.50.0/bin/run.sh pmd"
alias cpd="/home/pierre/pmd-bin-6.50.0/bin/run.sh cpd"

alias docker-compose="docker compose"

# Mostly touched files. Start with them for a refacto !
alias mostlytouched="git log --format=format: --name-only --since=12.month| egrep -v '^$' | sort | uniq -c | sort -nr | head -50"

# image in terminal with kitty
alias icat="kitty +kitten icat"

#
alias exportdotenv="set -o allexport && source .env && set +o allexport"

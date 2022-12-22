# Gerardo Torres Castro
#
# http://github.com/gtr
# http://gerardotorres.me
#
# ~/.bash_profile (for my Mac OS setup).
#

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
#shopt -s globstar

#----------------------------------------
# ALIASES
#----------------------------------------

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias dir='dir --color=auto'
    alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# git aliases
alias ga='git add'
alias gc='git commit -m'
alias gs='git status'
alias gcl='git clone'
alias gp='git push'
alias testme='l'

alias py='python3'

# PS1
export PS1="\[\033[38;5;169m\]\$(git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1) /')\[$(tput sgr0)\]\[\033[38;5;10m\]\u\[$(tput sgr0)\]->\[$(tput sgr0)\]\[\033[38;5;11m\][\[$(tput sgr0)\]\[\033[38;5;68m\]\W\[$(tput sgr0)\]\[\033[38;5;11m\]]\[$(tput sgr0)\] \\$ \[$(tput sgr0)\]"

# CockroachDB path (until I write a path-bookmarking script
# https://github.com/gtr/tel).
CRDB="/Users/gerardo/go/src/github.com/cockroachdb/cockroach/"

. "$HOME/.cargo/env"
export PATH="/path/to/cloned_folder/homebrew/bin:$PATH"
export PATH="/path/to/cloned_folder/homebrew/bin:$PATH"

eval $(/opt/homebrew/bin/brew shellenv)
export PATH="$(brew --prefix)/opt/make/libexec/gnubin:$PATH"

alias crdb='Users/gerardo/go/src/github.com/cockroachdb/cockroach'

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/gerardo/google-cloud-sdk/path.bash.inc' ]; then . '/Users/gerardo/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/gerardo/google-cloud-sdk/completion.bash.inc' ]; then . '/Users/gerardo/google-cloud-sdk/completion.bash.inc'; fi

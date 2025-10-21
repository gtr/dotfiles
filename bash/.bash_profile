shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

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
alias la='ls -a'
alias l='ls -cf'

ll() {
    CLICOLOR_FORCE=1 ls -Glhp "$@" | awk '/^total/{next} /\/$/{dirs=dirs $0 ORS; next} {files=files $0 ORS} END{printf "%s%s", dirs, files}'
}

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


alias vim='nvim'
. "$HOME/.cargo/env"

export NVM_DIR="$HOME/.nvm"
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

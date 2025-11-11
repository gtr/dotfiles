# --- PATH & tools ---
fish_add_path /opt/homebrew/bin /usr/local/bin

fish_add_path /opt/homebrew/opt/libpq/bin

fish_add_path $HOME/.cargo/bin

if status --is-interactive; and not set -q ZELLIJ; and command -q zellij
    exec zellij
end

# Disable greeting message (sorry fishy)
set -U fish_greeting ""

alias py 'python3'

# Neovim + fallback
alias vim 'nvim'
alias vvim 'vim'

# Zellij
alias zj 'zellij'

# --- Git aliases ---
alias ga  'git add'
alias gc  'git commit -m'
alias gs  'git status'
alias gcl 'git clone'
alias gp  'git push'

# --- ls helpers ---
alias la 'ls -a'
alias l  'ls -cf'

function ll
    set -lx CLICOLOR_FORCE 1
    ls -Glhp $argv | awk '/^total/{next} /\/$/{dirs=dirs $0 ORS; next} {files=files $0 ORS} END{printf "%s%s", dirs, files}'
end

if test -f ~/.config/fish/conf.d/90-local-secrets.fish
    source ~/.config/fish/conf.d/90-local-secrets.fish
end

starship init fish | source

# Show only $ on old prompts
function starship_transient_prompt_func
    starship module character
end

# Enable transient prompt
enable_transience
function fish_greeting; end

function __zellij_auto_rename --on-variable PWD
    if test -n "$ZELLIJ"
        zellij action rename-pane -- "$PWD"
    end
end

function nvim --wraps vim
    if test -n "$ZELLIJ"
        zellij action rename-pane -- "vim $PWD"
    end
    command nvim $argv
end

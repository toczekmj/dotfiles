if status is-interactive
    # zoxide
    zoxide init fish | source
    alias cd="z"

    # bat
    alias cat="bat"

    # eza
    alias ls="eza --icons=always --group-directories-first"
    alias la="eza --icons=always -all --group-directories-first"
    alias lt="eza --icons=always --group-directories-first -T"

    # fzf
    alias fzp="fzf --preview 'bat -n --color=always {}'"
    fzf --fish | source

    # lazygit
    alias g="lazygit"

    # navi
    alias n="navi"
    alias nd="navi --tldr"
    navi widget fish | source

    # docker 
    alias docker="sudo docker"
    alias lazydocker="sudo lazydocker"
    alias d="docker"
    alias ld="lazydocker"

    # other
    alias cls="clear"
    alias pacman="sudo pacman"
    alias p="sudo pacman"
    alias yeet="sudo pacman -Rcns"
    alias get="sudo pacman -S"
    alias search="sudo pacman -Ss"

    # yazi
    function y
        set tmp (mktemp -t "yazi-cwd.XXXXXX")
        command yazi $argv --cwd-file="$tmp"
        if read -z cwd <"$tmp"; and [ "$cwd" != "$PWD" ]; and test -d "$cwd"
            builtin cd -- "$cwd"
        end
        rm -f -- "$tmp"
    end
end

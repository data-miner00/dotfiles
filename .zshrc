# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=200
SAVEHIST=1000
setopt autocd beep extendedglob nomatch notify
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/mumk/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

PROMPT="%n@%F{225}%m %F{195}%~%F{white}%# "

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias nv='nvim'
alias ted='cd ~/Workspace/ted-tarik'
alias nvconf='cd ~/.config/nvim'
alias img='sxiv'
alias tty='tty-clock -c -C 4'
alias start='sudo pacman -Syu --noconfirm && startx'
alias quote='curl https://api.quotable.io/random -s | jq  ".content" | cowsay | lolcat'

# Move all files and folders in the current directory to parent directory
alias hoist='find . -maxdepth 1 -exec mv {} .. \;'

# Git bare repository to manage dotfiles
alias config='/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME'

function mkcd() {
    mkdir -p -- "$1" &&
    cd -P -- "$1"
}

function colors() {
    for i in {0..255}; do 
        printf "\x1b[38;5;${i}mcolor%-5i\x1b[0m" $i 
        if ! (( ($i + 1 ) % 8 ))
            then echo
        fi
    done
}


export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# bun completions
[ -s "/home/mumk/.bun/_bun" ] && source "/home/mumk/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
PATH="$BUN_INSTALL/bin:$PATH"

export PATH="$HOME/.local/bin:$PATH"


[ -f "/home/mumk/.ghcup/env" ] && source "/home/mumk/.ghcup/env" # ghcup-env

# pnpm
export PNPM_HOME="/home/mumk/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

export PATH="$HOME/.nix-profile/bin:$PATH"

neofetch

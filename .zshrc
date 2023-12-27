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

# Git bare repository to manage dotfiles
alias config='/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME'

function mkcd() {
    mkdir -p -- "$1" &&
    cd -P -- "$1"
}

# Enable completion system
autoload -Uz compinit
compinit

export LISTMAX=10000

setopt MENU_COMPLETE
setopt COMPLETEALIASES

zstyle ':completion:*' menu select
zstyle ':completion:*' list-scroll yes
zstyle ':completion:*' group-name ''
zstyle ':completion:*' verbose yes
zstyle ':completion:*' descriptions 'yes'
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}' # case-insensitive completion

## history file location and size
HISTFILE=$HOME/.zsh_history
HISTSIZE=10000
SAVEHIST=10000

setopt SHARE_HISTORY           # Share history across all sessions
setopt APPEND_HISTORY          # Append to history file, don't overwrite
setopt INC_APPEND_HISTORY      # Write to history file immediately, not on exit
setopt HIST_IGNORE_DUPS        # Don't record duplicate entries
setopt HIST_FIND_NO_DUPS       # Don't display duplicates when searching
setopt HIST_IGNORE_SPACE       # Don't record commands starting with space
setopt HIST_REDUCE_BLANKS      # Remove superfluous blanks before recording

# history search
if (( $+commands[fzf] )); then
	source <(fzf --zsh)                             # Use fzf with ^R
	bindkey "${terminfo[kcuu1]}" fzf-history-widget # Use fzf when pressing up arrow for history
else
	# TODO: doesn't even sort of work
	zmodload zsh/complist
	autoload -Uz history-beginning-search-menu
	zle -N history-beginning-search-menu
	bindkey '^R' history-beginning-search-menu
fi

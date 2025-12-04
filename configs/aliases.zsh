# ls aliases
alias ll='ls -lh'
alias la='ls -lAh'
alias l='ls -lah'
alias ls='ls -G'

# Git aliases
alias g='git'
alias ga='git add'
alias gaa='git add --all'
alias gca='git commit --amend'
alias gcmsg='git commit -m'
alias gco='git checkout'
alias gcb='git checkout -b'
alias gst='git status'
alias gd='git diff'
alias gp='git push'
alias gl='git pull'
alias glog='git log --oneline --decorate --graph'
alias gb='git branch'
alias gba='git branch -a'
alias grh='git reset HEAD'
alias grhh='git reset --hard HEAD'
alias gs='git status'

# OS-specific aliases
# macOS aliases
if [[ $OSTYPE == "darwin"* ]]; then
	alias showfiles='defaults write com.apple.finder AppleShowAllFiles -bool true && killall Finder'
	alias hidefiles='defaults write com.apple.finder AppleShowAllFiles -bool false && killall Finder'
fi


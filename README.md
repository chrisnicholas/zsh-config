# zsh config

zsh configurations I want to use everywhere regardless of what is in `~/.zshrc` for that computer.

## Usage

Clone this repo to some directory of your choosing.
Add the following to `~/.zshrc`:
```zsh
# `configs/prompt.zsh` expects a separate startship config for main and transient prompt.
export STARSHIP_MAIN_PROMPT="$HOME/.config/starship/main_prompt.toml"
export STARSHIP_TRANSIENT_PROMPT="$HOME/.config/starship/transient_prompt.toml"

source "cloned/repo/path/init.zsh"
```

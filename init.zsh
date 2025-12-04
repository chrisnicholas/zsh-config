# ${0:A}: Absolute path of current file
# ${0:a:h}: Absolute path of directory containing current file
CONFIGS_DIR="${0:a:h}/configs"

source "$CONFIGS_DIR/prompt.zsh"
source "$CONFIGS_DIR/history.zsh"
source "$CONFIGS_DIR/completion.zsh"
source "$CONFIGS_DIR/aliases.zsh"

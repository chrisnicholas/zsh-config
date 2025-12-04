# Initialize starship.rs with main prompt
export STARSHIP_CONFIG=$STARSHIP_MAIN_PROMPT
eval "$(starship init zsh)"

# Redraw the prompt every second for "live" time
# TMOUT=1
# TRAPALRM() { zle .reset-prompt }

# Configure transient prompt
clear-screen-clean() {
  local prompt_height=2

  # Erase the current prompt by overwriting it with blank lines
  # Move to the beginning of prompt, then clear those lines
  print -n "\e[${prompt_height}F" # Move to start of prompt (column 1)
  print -n "\e[0J"                # Clear from cursor to end of screen

  # Clear visible screen only (no scrollback manipulation)
  print -n "\e[H\e[2J"

  # Redraw prompt fresh
  zle .reset-prompt
}

zle -N clear-screen-clean

bindkey '^L' clear-screen-clean

zle-line-init() {
  echoti smkx
  emulate -L zsh

  [[ $CONTEXT == start ]] || return 0

  while true; do
    zle .recursive-edit
    local -i ret=$?
    [[ $ret == 0 && $KEYS == $'\4' ]] || break
    [[ -o ignore_eof ]] || exit 0
  done

  # Switch to transient starship config
  export STARSHIP_CONFIG=$STARSHIP_TRANSIENT_PROMPT

  zle .reset-prompt

  # Switch back to main config for next prompt
  export STARSHIP_CONFIG=$STARSHIP_MAIN_PROMPT

  if (( ret )); then
    zle .send-break
  else
    zle .accept-line
  fi
  return ret
}

zle-line-finish() {
	echoti rmkx
}

zle -N zle-line-init

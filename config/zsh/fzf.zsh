# ====================================================================
# FZF + FZF-TAB
# ====================================================================

if [ -z "$HOMEBREW_PREFIX" ] && command -v brew >/dev/null 2>&1; then
  export HOMEBREW_PREFIX="$(brew --prefix)"
fi

# fzf Shell-Integration (Keybindings + Completion)
if [ -f "$HOMEBREW_PREFIX/opt/fzf/shell/key-bindings.zsh" ]; then
  source "$HOMEBREW_PREFIX/opt/fzf/shell/key-bindings.zsh"
fi
if [ -f "$HOMEBREW_PREFIX/opt/fzf/shell/completion.zsh" ]; then
  source "$HOMEBREW_PREFIX/opt/fzf/shell/completion.zsh"
fi

# fzf-tab fuer bessere Completion-Auswahl
if [ -f "$HOMEBREW_PREFIX/opt/fzf-tab/share/fzf-tab/fzf-tab.zsh" ]; then
  source "$HOMEBREW_PREFIX/opt/fzf-tab/share/fzf-tab/fzf-tab.zsh"
fi

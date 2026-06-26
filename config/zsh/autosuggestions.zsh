# ====================================================================
# AUTO-SUGGESTIONS CONFIGURATION
# ====================================================================

# 1. Das eigentliche Plugin von Homebrew laden
if [ -f "$(brew --prefix 2>/dev/null)/share/zsh-autosuggestions/zsh-autosuggestions.zsh" ]; then
    source "$(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh"
fi

# 2. Such-Strategie: Erst in der History suchen, dann in den Tab-Vervollständigungen
ZSH_AUTOSUGGEST_STRATEGY=(history completion)

# 3. Farbe des Vorschlags-Textes auf ein dezentes, unaufdringliches Grau setzen
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=8'

# 4. Tastenkombinationen (Keybindings) für Vorschläge
bindkey '^[[C' forward-char  # Vorschlag komplett annehmen mit Pfeiltaste-Rechts
bindkey '^ ' forward-word    # Nur das nächste Wort annehmen mit Strg + Leerzeichen

# ====================================================================
# AUTO-COMPLETION CONFIGURATION
# ====================================================================

if [ -z "$HOMEBREW_PREFIX" ] && command -v brew >/dev/null 2>&1; then
  export HOMEBREW_PREFIX="$(brew --prefix)"
fi

# 1. Homebrew-Pfade laden (wichtig für Mac-User, damit Befehle gefunden werden)
if [ -d "$HOMEBREW_PREFIX/share/zsh/site-functions" ]; then
  FPATH="$HOMEBREW_PREFIX/share/zsh/site-functions:${FPATH}"
fi

# 2. Das Zsh-Vervollständigungssystem initialisieren
autoload -U compinit && compinit

# 3. Versteckte Dateien (die mit einem Punkt beginnen) bei TAB mitanzeigen
_comp_options+=(globdots)

# 4. Such-Reihenfolge: Erst normal suchen, dann bei Tippfehlern korrigieren
zstyle ':completion:*' completer _extensions _complete _approximate

# 5. Groß-/Kleinschreibung ignorieren (tippst du 'downloads', findet er 'Downloads')
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'

# 6. Schickes, interaktives Auswahlmenü aktivieren (Navigation mit Pfeiltasten)
zstyle ':completion:*' menu select

# 7. Echte Systemfarben (wie beim 'ls'-Befehl) im Auswahlmenü anzeigen
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}

# 8. Fehlermeldungen und Warnungen farblich stylen (z. B. Rot bei "kein Treffer")
zstyle ':completion:*:*:*:*:descriptions' format '%F{green} -- %d --%f'
zstyle ':completion:*:messages' format ' %F{purple} -- %d --%f'
zstyle ':completion:*:warnings' format ' %F{red}-- Keine Treffer gefunden --%f'

# 9. Doppelte Slashes (//) automatisch zu einem / zusammenfassen
zstyle ':completion:*' squeeze-slashes true


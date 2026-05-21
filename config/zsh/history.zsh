# ====================================================================
# HISTORY
# ====================================================================

HISTFILE=~/.zsh_history
HISTSIZE=5000
SAVEHIST=5000

# Pfeiltasten-Suche
autoload -U up-line-or-beginning-search
autoload -U down-line-or-beginning-search

zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search

bindkey '^[[A' up-line-or-beginning-search
bindkey '^[[B' down-line-or-beginning-search

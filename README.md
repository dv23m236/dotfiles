# dotfiles

Persönliche Konfigurationen mit modularem Zsh-Setup.

## Struktur

- `Brewfile`
- `tmux.conf`
- `config/starship.toml`
- `config/zsh/history.zsh`
- `config/zsh/completion.zsh`
- `config/zsh/autosuggestions.zsh`
- `config/zsh/fzf.zsh`
- `config/zsh/starship.zsh`
- `config/zsh/syntax-highlighting.zsh`
- `config/zsh/zshrc` (Loader)

## Prinzip

- Alle echten Module liegen im Repository unter `config/zsh`.
- In `~/.zsh` liegen nur Symlinks auf diese Module.
- `~/.zshrc` laedt alle `*.zsh` Dateien aus `~/.zsh` alphabetisch.

## Setup

```bash
mkdir -p ~/.zsh

ln -sf ~/dotfiles/config/zsh/history.zsh ~/.zsh/history.zsh
ln -sf ~/dotfiles/config/zsh/completion.zsh ~/.zsh/completion.zsh
ln -sf ~/dotfiles/config/zsh/autosuggestions.zsh ~/.zsh/autosuggestions.zsh
ln -sf ~/dotfiles/config/zsh/fzf.zsh ~/.zsh/fzf.zsh
ln -sf ~/dotfiles/config/zsh/starship.zsh ~/.zsh/starship.zsh
ln -sf ~/dotfiles/config/zsh/syntax-highlighting.zsh ~/.zsh/syntax-highlighting.zsh

ln -sf ~/dotfiles/config/zsh/zshrc ~/.zshrc
source ~/.zshrc
```

## Lokale Overrides

- Lokale Overrides sind aktuell nicht als Datei-Vorlage im Repo hinterlegt.
- Falls nötig: eigene lokale Datei erstellen und nicht versionieren.

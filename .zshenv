#!/usr/bin/env zsh

# ░▒▓ HyDE Zsh Environment ▓▒░

# ---------------------
# XDG Base Directories
# ---------------------
export XDG_CONFIG_HOME="${XDG_CONFIG_HOME:-$HOME/.config}"
export XDG_DATA_HOME="${XDG_DATA_HOME:-$HOME/.local/share}"
export XDG_STATE_HOME="${XDG_STATE_HOME:-$HOME/.local/state}"
export XDG_CACHE_HOME="${XDG_CACHE_HOME:-$HOME/.cache}"

# XDG User Directories
export XDG_DESKTOP_DIR="${XDG_DESKTOP_DIR:-"$(xdg-user-dir DESKTOP)"}"
export XDG_DOWNLOAD_DIR="${XDG_DOWNLOAD_DIR:-"$(xdg-user-dir DOWNLOAD)"}"
export XDG_TEMPLATES_DIR="${XDG_TEMPLATES_DIR:-"$(xdg-user-dir TEMPLATES)"}"
export XDG_PUBLICSHARE_DIR="${XDG_PUBLICSHARE_DIR:-"$(xdg-user-dir PUBLICSHARE)"}"
export XDG_DOCUMENTS_DIR="${XDG_DOCUMENTS_DIR:-"$(xdg-user-dir DOCUMENTS)"}"
export XDG_MUSIC_DIR="${XDG_MUSIC_DIR:-"$(xdg-user-dir MUSIC)"}"
export XDG_PICTURES_DIR="${XDG_PICTURES_DIR:-"$(xdg-user-dir PICTURES)"}"
export XDG_VIDEOS_DIR="${XDG_VIDEOS_DIR:-"$(xdg-user-dir VIDEOS)"}"

# ---------------------
# Shell Behavior
# ---------------------
export HISTFILE=~/.zsh_history
export HISTSIZE=10000
export SAVEHIST=10000

setopt EXTENDED_HISTORY          # Save timestamps in history
setopt INC_APPEND_HISTORY        # Save history incrementally
setopt SHARE_HISTORY             # Share history across terminals
setopt HIST_IGNORE_ALL_DUPS      # Remove old duplicate commands
setopt HIST_EXPIRE_DUPS_FIRST    # Expire dups before unique
setopt HIST_IGNORE_SPACE         # Ignore commands starting with space

# ---------------------
# Path Customization
# ---------------------
export PATH="$HOME/.local/bin:$HOME/Projects/Scripts:$PATH"

# ---------------------
# Starship Prompt
# ---------------------
export STARSHIP_CACHE="$XDG_CACHE_HOME/starship"
export STARSHIP_CONFIG="$XDG_CONFIG_HOME/starship/starship.toml"
eval "$(starship init zsh)"

# ---------------------
# Completions
# ---------------------
autoload -Uz compinit && compinit

# ---------------------
# Plugins
# ---------------------
# zsh-autosuggestions
if [[ -f /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh ]]; then
    source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
    ZSH_AUTOSUGGEST_STRATEGY=(history completion)
    if typeset -f _zsh_autosuggest_start &>/dev/null; then
        _zsh_autosuggest_start
    fi
fi

# zsh-syntax-highlighting
if [[ -f /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ]]; then
    source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
fi

# ---------------------
# Aliases & Functions
# ---------------------
alias c='clear'
alias ..='cd ..'
alias ...='cd ../..'
alias .3='cd ../../..'
alias mkdir='mkdir -p'

# Make + cd
mcd() {
    mkdir -p "$1" && cd "$1"
}

# ---------------------
# Editor Defaults
# ---------------------
export EDITOR=nvim

# ---------------------
# Optional: Better history navigation
# ---------------------
bindkey "^[[A" history-beginning-search-backward
bindkey "^[[B" history-beginning-search-forward


# ~/.zshrc

# Initialize completions
autoload -U compinit && compinit
autoload -Uz add-zsh-hook

# Source plugins (verify that these paths match your installation)
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

# Initialize starship prompt
eval "$(starship init zsh)"

# History settings
export HISTFILE=~/.zsh_history
export HISTSIZE=10000
export SAVEHIST=10000
export _JAVA_AWT_WM_NONREPARENTING=1

setopt APPEND_HISTORY
setopt INC_APPEND_HISTORY
setopt SHARE_HISTORY          # Share history across terminals
setopt HIST_IGNORE_ALL_DUPS   # Remove duplicate commands
setopt HIST_SAVE_NO_DUPS      # Don't save duplicates
setopt HIST_IGNORE_SPACE      # Ignore commands starting with a space
setopt HIST_VERIFY            # Show command before execution with history expansion
setopt EXTENDED_HISTORY       # Save timestamped history

typeset -A ZSH_HIGHLIGHT_STYLES
ZSH_HIGHLIGHT_STYLES[command]='fg=white'
ZSH_HIGHLIGHT_STYLES[builtin]='fg=white'
ZSH_HIGHLIGHT_STYLES[alias]='fg=white'

# Set nvim alias based on environment:
# - If in a direct Kitty window (KITTY_WINDOW_ID is set) and not inside tmux, use kitty.sh.
# - Otherwise, call nvim directly.
if [[ -n "$KITTY_WINDOW_ID" && -z "$TMUX" ]]; then
    alias nvim='~/.config/nvim/kitty.sh'
else
    alias nvim='nvim'
fi

# Key bindings for history search
bindkey "^[[A" history-beginning-search-backward
bindkey "^[[B" history-beginning-search-forward

# Append custom scripts to PATH
export PATH="$PATH:/home/isaiah/Projects/Scripts"

mcd() {
  mkdir -p "$1" && cd "$1"
}

# Show system info at terminal start
if [[ $- == *i* ]] && command -v neofetch &> /dev/null; then
    neofetch
fi

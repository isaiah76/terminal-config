# ~/.zshrc

# ----------------------------
#  Aliases
# ----------------------------
alias c='clear'                       # Clear terminal
alias cd="z"                          # Use zoxide instead of cd
alias ls="eza --icons --group-directories-first --git"
alias ll="eza -l --icons --group-directories-first"  # long listing
alias la="eza -la --icons --group-directories-first" # long + hidden files
alias lt="eza --tree --icons"                       # tree view
alias fastfetch='fastfetch --logo-type kitty'
alias vim="nvim"
alias find="fd"

# Directory navigation shortcuts
alias ..='cd ..'
alias ...='cd ../..'
# alias .3='cd ../../..'
# alias .4='cd ../../../..'
# alias .5='cd ../../../../..'

# ----------------------------
#  Environment Variables
# ----------------------------
export EDITOR=nvim
export HISTFILE=~/.zsh_history
export HISTSIZE=10000
export SAVEHIST=10000
export _JAVA_AWT_WM_NONREPARENTING=1

# Append custom scripts to PATH
export PATH="$PATH:/home/isaiah/Projects/Scripts"
export PATH=$PATH:/home/isaiah/.spicetify

# Android SDK Paths
export ANDROID_SDK_ROOT=/opt/android-sdk
export PATH=$PATH:$ANDROID_SDK_ROOT/cmdline-tools/bin
export PATH=$PATH:$ANDROID_SDK_ROOT/platform-tools
export PATH=$PATH:$ANDROID_SDK_ROOT/build-tools/35.0.1
export ANDROID_AVD_HOME=$HOME/.config/.android/avd
export PATH=$PATH:$ANDROID_SDK_ROOT/emulator

# ----------------------------
#  Zoxide
# ----------------------------
eval "$(zoxide init zsh)"

# ----------------------------
#  Plugins
# ----------------------------
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

# ----------------------------
#  History Settings
# ----------------------------
set -o vi  # Use vi-style keybindings

setopt APPEND_HISTORY
setopt INC_APPEND_HISTORY
setopt SHARE_HISTORY          # Share history across terminals
setopt HIST_IGNORE_ALL_DUPS   # Remove duplicate commands
setopt HIST_SAVE_NO_DUPS      # Don't save duplicates
setopt HIST_IGNORE_SPACE      # Ignore commands starting with a space
setopt HIST_VERIFY            # Show command before execution with history expansion
setopt EXTENDED_HISTORY       # Save timestamped history

# ----------------------------
#  Syntax Highlighting Styles
# ----------------------------
typeset -A ZSH_HIGHLIGHT_STYLES
ZSH_HIGHLIGHT_STYLES[command]='fg=white'
ZSH_HIGHLIGHT_STYLES[builtin]='fg=white'
ZSH_HIGHLIGHT_STYLES[alias]='fg=white'

# ----------------------------
#  Key Bindings
# ----------------------------
bindkey "^[[A" history-beginning-search-backward
bindkey "^[[B" history-beginning-search-forward

# ----------------------------
#  Custom Functions
# ----------------------------
mcd() { mkdir -p "$1" && cd "$1" }

# ----------------------------
#  Kitty / Neovim Handling
# ----------------------------
if [[ -n "$KITTY_WINDOW_ID" && -z "$TMUX" ]]; then
    alias nvim='~/.config/nvim/kitty.sh'
else
    alias nvim='nvim'
fi

# ----------------------------
#  Startup Info
# ----------------------------
if [[ $- == *i* ]] && command -v fastfetch &> /dev/null; then
    fastfetch --config ~/.config/fastfetch/config.jsonc
fi

# ----------------------------
#  Completions
# ----------------------------
autoload -U compinit && compinit
autoload -Uz add-zsh-hook

# ----------------------------
#  Command Not Found Handler
# ----------------------------
command_not_found_handler() {
  echo "zsh: command not found: $1"
  return 127
}


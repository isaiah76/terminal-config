# ~/.zshrc
eval "$(starship init zsh)"

autoload -U compinit && compinit

export HISTFILE=~/.zsh_history
export HISTSIZE=10000
export SAVEHIST=10000
export _JAVA_AWT_WM_NONREPARENTING=1

setopt APPEND_HISTORY
setopt INC_APPEND_HISTORY
setopt SHARE_HISTORY  # Share history across terminals
setopt HIST_IGNORE_ALL_DUPS  # Remove duplicate commands
setopt HIST_SAVE_NO_DUPS  # Don't save duplicates
setopt HIST_IGNORE_SPACE  # Ignore commands that start with a space
setopt HIST_VERIFY  # Show command before executing with history expansion
setopt EXTENDED_HISTORY  # Save timestamped history

source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

alias nvim='~/.config/nvim/kitty.sh' # or your custom path

bindkey "^[[A" history-beginning-search-backward
bindkey "^[[B" history-beginning-search-forward

export PATH="$PATH:/home/isaiah/Projects/Scripts"

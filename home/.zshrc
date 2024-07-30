# Set the directory we want to store zinit and plugins
ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"

# Download Zinit, if it's not there yet
if [ ! -d "$ZINIT_HOME" ]; then
    mkdir -p "$(dirname $ZINIT_HOME)"
    git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
fi

# Source/Load zinit
source "${ZINIT_HOME}/zinit.zsh"

# Add in zsh plugins
zinit light zsh-users/zsh-syntax-highlighting
zinit light zsh-users/zsh-completions
zinit light zsh-users/zsh-autosuggestions
zinit light Aloxaf/fzf-tab

# Add in snippets
zinit snippet OMZP::git                 # aliases for git commands
zinit snippet OMZP::sudo                # double tap escape to prefix previous command with sudo
zinit snippet OMZP::colored-man-pages   # Colored man pages for better readability

# Load zsh-completions
autoload -U compinit && compinit

zinit cdreplay -q

# Keybindings
bindkey -e
bindkey '^p' history-search-backward
bindkey '^n' history-search-forward

# History
HISTSIZE=5000
HISTFILE=~/.zsh_history
SAVEHIST=$HISTSIZE
HISTDUP=erase
setopt appendhistory
setopt sharehistory
setopt hist_ignore_space
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_ignore_dups
setopt hist_find_no_dups
setopt globdots

# Completion styling
zstyle ':completion:*' menu no
zstyle ':fzf-tab:complete:cd:*' fzf-preview 'eza -A -1 --group-directories-first $realpath'
zstyle ':fzf-tab:*' fzf-flags '-e'

# Shell integrations
eval "$(fzf --zsh)"

eval "$(oh-my-posh init zsh --config $HOME/.config/ohmyposh/zen.toml)"

export EDITOR="nvim"
export BROWSER="librewolf"
export SHELLCONF="$HOME/.config/shell"
export SHELLVAL="zsh"
export TIPSDIR="$HOME/Documents/tips"

source $HOME/.zsh_aliases

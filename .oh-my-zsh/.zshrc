# Lines configured by zsh-newuser-install
HISTFILE=$ZSH/.histfile
HISTSIZE=10000
SAVEHIST=1000
setopt extendedglob
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/var/home/shadespark/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

export GOPATH=$HOME/go

eval "$(starship init zsh)"

# eval "$(zoxide init zsh)"

# Oh-my-zsh plugins:
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git aliases zsh-you-should-use  z)

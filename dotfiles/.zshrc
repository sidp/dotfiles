export EDITOR="vim"

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# oh-my-zsh theme
ZSH_THEME="sidp"

# Disable auto-setting terminal title.
DISABLE_AUTO_TITLE="true"

# Would you like to use another custom folder than $ZSH/custom?
ZSH_CUSTOM=$HOME/.dotfiles/oh-my-zsh

# oh-my-zsh plugins
plugins=(git git-flow brew brew-cask osx node npm)

source $ZSH/oh-my-zsh.sh

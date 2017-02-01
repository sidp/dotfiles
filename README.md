# My dotfiles

## Installation

These instructions clones this repo into ~/.dotfiles and symlinks each file from ~/.dotfiles/dotfiles to your home directory. If a file already exists in your home directory, you’ll be asked to overwrite or skip.

1. Clone from github `git clone https://github.com/sidp/dotfiles.git ~/.dotfiles && cd ~/.dotfiles`
2. Symlink `./symlink.sh`

## Update

1. Move to directory `cd ~/.dotfiles`
2. Pull from github `git pull origin master`

## Forking

1. Move your dotfiles to the ~/.dotfiles/dotfiles directory. They will be automatically symlinked into your home directory when you run symlink.sh.
2. Don’t forget to update the info in dotfiles/.gitconfig

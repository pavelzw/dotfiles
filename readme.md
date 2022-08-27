# Dotfiles

These dotfiles are some of the configurations of my MacBook.
This repository is best used as a [git bare repository](https://www.atlassian.com/git/tutorials/dotfiles).

## Included

Configurations for the following programs are included:

* [iTerm2](https://github.com/gnachman/iTerm2)
* [LinearMouse](https://github.com/linearmouse/linearmouse)
* [tmux](https://github.com/tmux/tmux)

## Installation

As mentioned above, this repository is to be used as a git bare repository.
The setup is as follows:
```shell
# this is only needed temporarily, the .zshrc contains this line as well
alias dotfiles="/usr/bin/git --git-dir=$HOME/.cfg --work-tree=$HOME"
echo ".cfg" >> .gitignore # this is to avoid weird recursion problems
git clone --bare --recurse-submodules https://www.github.com/pavelzw/dotfiles $HOME/.cfg
dotfiles checkout
# this avoids having git status polluted with random files
dotfiles config --local status.showUntrackedFiles no
```

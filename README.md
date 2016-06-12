# N17R's dotfiles

This is the standard dotfiles configuration for nFactorial Incubator's students.

## Installation

```bash
# Install rcm
brew install thoughtbot/formulae/rcm

# Clone dotfiles from Github
git clone --recursive https://github.com/n17r/dotfiles.git ~/.dotfiles

# Synchronize symlinks
rcup -v -d ~/.dotfiles/symlinks
```

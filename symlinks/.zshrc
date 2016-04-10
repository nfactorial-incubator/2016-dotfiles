COMPLETION_WAITING_DOTS="true"
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern cursor)
ZSH_HIGHLIGHT_PATTERNS=('rm -rf *' 'fg=white,bold,bg=red')

unsetopt NOMATCH
setopt APPEND_HISTORY
setopt INTERACTIVE_COMMENTS

source ~/dotfiles/zgen/zgen.zsh
source ~/dotfiles/.aliases
source ~/dotfiles/.functions
source ~/dotfiles/.exports

if ! zgen saved; then
  zgen oh-my-zsh

  zgen oh-my-zsh plugins/osx
  zgen oh-my-zsh plugins/brew
  zgen oh-my-zsh plugins/brew-cask
  zgen oh-my-zsh plugins/git
  zgen oh-my-zsh plugins/git-extras
  zgen oh-my-zsh plugins/gem
  zgen oh-my-zsh plugins/history
  zgen oh-my-zsh plugins/node
  zgen oh-my-zsh plugins/npm
  zgen oh-my-zsh plugins/pip
  zgen oh-my-zsh plugins/pod
  zgen oh-my-zsh plugins/python
  zgen oh-my-zsh plugins/ruby
  zgen oh-my-zsh plugins/z

  zgen load zsh-users/zsh-syntax-highlighting
  zgen load zsh-users/zsh-completions src
  zgen load uvaes/fzf-marks
  zgen load rimraf/k

  zgen oh-my-zsh themes/clean

  zgen save
fi

eval "$(rbenv init -)"

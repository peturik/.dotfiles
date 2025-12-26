
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

plugins=(
  git
  docker
  zsh-autosuggestions
  zsh-syntax-highlighting
  history-substring-search
)

source $ZSH/oh-my-zsh.sh

# Aliases
source $HOME/.dotfiles/zsh/aliases.zsh

# Better LS
export LS_COLORS="di=1;34:ln=1;36:so=1;35:pi=33:ex=1;32:bd=1;33:cd=1;33:su=1;31:sg=1;31:tw=1;34:ow=1;34"
alias ls='eza --level=1 --icons=always --group-directories-first --color=always --sort=extension' 
alias ll='ls -lah'

# Editor
export EDITOR="nvim"

# PATH
export PATH="$HOME/bin:$PATH"

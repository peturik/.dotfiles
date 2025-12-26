#!/usr/bin/env bash

DOTFILES="$HOME/.dotfiles"
mkdir -p ~/.config/alacritty/
mkdir -p ~/.config/nvim/
ln -sf "$DOTFILES"/alacritty/alacritty.yml ~/.config/alacritty/alacritty.yml
ln -sf "$DOTFILES"/tmux/.tmux.conf ~/.tmux.conf
ln -sf "$DOTFILES"/zsh/.zshrc ~/.zshrc
# ln -sf "$DOTFILES"/starship/starship.toml ~/.config/starship.toml
ln -sf "$DOTFILES"/lazyvim/nvim ~/.config/nvim

echo "Dotfiles installed!"

## Пакети для Arch Linux
sudo pacman -S \
  zsh tmux alacritty starship git neovim eza \
  zsh-autosuggestions zsh-syntax-highlighting

yay -S zinit-git nerd-fonts-jetbrains-mono delta

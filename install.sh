#!/usr/bin/env bash

mkdir -p ~/.config/alacritty/
mkdir -p ~/.config/nvim/
ln -sf "$HOME".dotfiles/alacritty/alacritty.yml ~/.config/alacritty/alacritty.yml
ln -sf "$HOME".dotfiles/tmux/.tmux.conf ~/.tmux.conf
ln -sf "$HOME".dotfiles/zsh/.zshrc ~/.zshrc
# ln -sf "$HOME".dotfiles/starship/starship.toml ~/.config/starship.toml
ln -sf "$HOME".dotfiles/lazyvim/nvim ~/.config/nvim

echo "Dotfiles installed!"

## Пакети для Arch Linux
sudo pacman -S \
  zsh tmux alacritty starship git neovim eza \
  zsh-autosuggestions zsh-syntax-highlighting

yay -S zinit-git nerd-fonts-jetbrains-mono delta

#!/bin/bash

echo "Running..."
ln -sf ~/dotfiles/.zshrc ~/.zshrc
ln -sf ~/dotfiles/kitty ~/.config/kitty
ln -sf ~/dotfiles/nvim ~/.config/nvim
ln -sf ~/dotfiles/picom ~/.config/picom
ln -sf ~/dotfiles/wezterm ~/.config/wezterm
ln -sf ~/dotfiles/tmux ~/.config/tmux
ln -sf ~/dotfiles/hypr ~/.config/hypr

echo "Done..."
# add more here

#!/bin/bash

echo "Running..."
ln -sf ~/dotfiles/.zshrc ~/.zshrc
ln -sf ~/dotfiles/kitty ~/.config/kitty
ln -sf ~/dotfiles/nvim ~/.config/nvim
ln -sf ~/dotfiles/picom ~/.config/picom
ln -sf ~/dotfiles/wezterm ~/.config/wezterm
ln -sf ~/dotfiles/tmux ~/.config/tmux
ln -sf ~/dotfiles/hypr ~/.config/hypr
ln -sf ~/dotfiles/i3 ~/.config/i3
ln -sf ~/dotfiles/sway ~/.config/sway

echo "Done..."
# add more here

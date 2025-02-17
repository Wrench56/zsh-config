#!/bin/sh

# Install for Arch Linux

sudo pacman -S --noconfirm --needed zsh git

# Install ZSH plugins
paru -S --noconfirm --needed zsh-theme-powerlevel10k-git
sudo pacman -S --noconfirm --needed zsh-syntax-highlighting

# Use distro-specific aliases
cp shell/arch-aliases ~/.local/arch-aliases
sed -i.bak 's|# __DISTRO_CONFIGS__|source ~/.local/arch-aliases|g' ~/.zshrc && rm ~/.zshrc.bak


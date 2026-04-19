#!/bin/bash

set -e

echo "===> Updating system"
sudo pacman -Syu --noconfirm

echo "===> Installing packages"
packages=(
  git
  niri
  man-db
  neovide
  stow
  fish
  neovim
  kitty
  rofi
  waybar
  zoxide
  eza
  bat
  btop
  navi
  fzf
  lazygit
  vifm
  yazi
  riprgep
)

sudo pacman -S --needed --noconfirm "${packages[@]}"

echo "===> Cloning dotfiles"
if [ ! -d "$HOME/.dotfiles" ]; then
  git clone git@gitlab.com:toczekmj/arch-dotfiles.git ~/.dotfiles
fi

cd ~/.dotfiles

echo "===> Applying dotfiles with stow"
for dir in */; do
  stow --restow -t "$HOME" "${dir%/}"
done

echo "===> Setting fish as default shell"
chsh -s /usr/bin/fish

echo "===> Setting navi repos"
navi repo add "https://github.com/denisidoro/navi.git"

echo "===> Installation complete! Please restart your terminal."

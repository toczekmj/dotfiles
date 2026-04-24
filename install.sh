#!/bin/bash

set -e

echo "===> Updating system"
sudo pacman -Syu --noconfirm

echo "===> Installing packages"
packages=(
  base-devel
  git
  niri
  github-cli
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
  fd
  lazygit
  vifm
  lazydocker
  yazi
  ripgrep
  tmux
  bluetui
  xwayland-satellite
  nm-connection-editor
)

paru_packages=(
  vial-appimage
  waypaper
  zen-browser
)

# install official repo packages
sudo pacman -S --needed --noconfirm "${packages[@]}"

# ensure paru is installed
if ! command -v paru &>/dev/null; then
  echo "===> Installing paru"
  temp_dir=$(mktemp -d)
  git clone https://aur.archlinux.org/paru.git "$temp_dir/paru"
  cd "$temp_dir/paru" || exit
  makepkg -si --noconfirm --needed
  cd ~ || exit
  rm -rf "$temp_dir"
fi

echo "===> Cloning dotfiles"
if [ ! -d "$HOME/.dotfiles" ]; then
  git clone git@gitlab.com:toczekmj/arch-dotfiles.git ~/.dotfiles
fi

# install AUR packages
paru -S --needed --noconfirm "${paru_packages[@]}"

cd ~/.dotfiles

echo "===> Applying dotfiles with stow"
for dir in */; do
  stow --restow -t "$HOME" "${dir%/}"
done

echo "===> Creating tmux config"
ln -sf "$(pwd)/tmux.conf" ~/.tmux.conf

echo "===> Setting fish as default shell"
chsh -s /usr/bin/fish

echo "===> Setting navi repos"
navi repo add "https://github.com/denisidoro/navi.git"

echo "===> Installation complete! Please restart your terminal."

#!/bin/bash

sudo pacman -S alacritty base-devel brightnessctl dmenu feh git \
gnu-free-fonts i3-wm i3status neovim less scrot tree ttf-firacode-nerd \
ttf-nerd-fonts-symbols xclip xorg-server xorg-xinit xorg-xrandr xorg-xsetroot \
pipewire pipewire-pulse wireplumber alsa-utils alsa-ucm-conf sof-firmware rtkit \
intel-ucode mesa vulkan-intel

# sudo pacman -S gnome-themes-extra kitty mpc mpd polybar

fc-cache -fv

mkdir -p $HOME/.config
sudo mkdir -p /usr/share/backgrounds
sudo cp $HOME/Projects/dotfiles_i3/wallpapers/* /usr/share/backgrounds
mkdir -p $HOME/Images/screenshots

#mkdir -p $HOME/.local/share/mpd/playlists
#mkdir -p $HOME/Music
#cp $HOME/Projects/dotfiles_i3/music/* $HOME/Music

sudo cp $HOME/Projects/dotfiles_i3/utils/30-touchpad.conf /etc/X11/xorg.conf.d/30-touchpad.conf

#sudo cp $HOME/Projects/dotfiles_i3/utils/lightdm-gtk-greeter.conf /etc/lightdm/lightdm-gtk-greeter.conf

DOTFILES_DIR="$HOME/Projects/dotfiles_i3"
CONFIG_DIR="$HOME/.config"

declare -a CONFIGS=("alacritty" "i3" "i3status" "kitty" "mpd" "nvim" "polybar")

# Symbolic Link
for dir in "${CONFIGS[@]}"; do
    SRC="$DOTFILES_DIR/$dir"
    DEST="$CONFIG_DIR/$dir"

    if [ -d "$DEST" ] || [ -L "$DEST" ]; then
        echo "Removendo configuração anterior de $dir..."
        rm -rf "$DEST"
    fi

    echo "Criando link para $dir..."
    ln -sf "$SRC" "$DEST"
done

echo "Vinculando .bashrc..."
ln -sf "$DOTFILES_DIR/shell/.bashrc" "$HOME/.bashrc"


#systemctl --user enable --now mpd.service
#mpc stop
#mpc clear
#mpc update
#mpc add /
#mpc repeat on

echo "Configurações executadas com sucesso."


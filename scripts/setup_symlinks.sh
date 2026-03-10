#!/bin/bash

#sudo pacman -S alacritty base-devel brightnessctl dmenu feh git gnome-themes-extra neovim mpc mpd polybar tree ttf-nerd-fonts-symbols xclip
sudo pacman -S alacritty base-devel brightnessctl dmenu feh git gnome-themes-extra neovim polybar scrot tree ttf-nerd-fonts-symbols xclip

mkdir -p $HOME/.config
sudo mkdir -p /usr/share/backgrounds
sudo cp $HOME/Projects/dotfiles_i3/wallpapers/* /usr/share/backgrounds
mkdir -p $HOME/Images/screenshots
#mkdir -p $HOME/.local/share/mpd/playlists
#mkdir -p $HOME/Music
#cp $HOME/Projects/dotfiles_i3/music/* $HOME/Music

DOTFILES_DIR="$HOME/Projects/dotfiles_i3"
CONFIG_DIR="$HOME/.config"

declare -a CONFIGS=("alacritty" "i3" "mpd" "nvim" "polybar")

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
#mpc update
#mpc add /
#mpc repeat on

echo "Configurações executadas com sucesso."

#! /bin/bash

# TODO: add 'auto_commit' function to input user commit message && auto commit it

set -e  # Exit on error

DOTFILES_DIR="$HOME/dev/dots"
CONFIG_SRC="$HOME/.config"
BIN_SRC="$HOME/.bin"

cd "$DOTFILES_DIR" || exit 1

echo 'Creating backup in .dotfiles.bak'
cp -rf ../dots ../.dotfiles.bak 2>/dev/null || echo 'Warning: Backup failed'
echo 'Backup complete'
echo '----'

echo 'Syncing bin/'
rm -rf bin
cp -r "$BIN_SRC" bin

echo 'Syncing config/'
rm -rf config
mkdir -p config
cd config || exit 1

cp "$CONFIG_SRC/betterlockscreenrc" .
cp -r "$CONFIG_SRC/bspwm" .
cp -r "$CONFIG_SRC/cava" .
cp -r "$CONFIG_SRC/dunst" .
cp -r "$CONFIG_SRC/eww" .
cp -r "$CONFIG_SRC/fish" .
#cp -r "$CONFIG_SRC/gtk-2.0" .
#cp -r "$CONFIG_SRC/gtk-3.0" .
#cp -r "$CONFIG_SRC/gtk-4.0" .
#cp -r "$CONFIG_SRC/kitty" .
cp -r "$CONFIG_SRC/lsd" .
cp "$CONFIG_SRC/mimeapps.list" .
#cp -r "$CONFIG_SRC/networkmanager-dmenu" .
cp -r "$CONFIG_SRC/nvim" .
cp -r "$CONFIG_SRC/picom" .
cp -r "$CONFIG_SRC/ranger" .
cp -r "$CONFIG_SRC/rofi" .
cp "$CONFIG_SRC/screenkey.json" .
cp -r "$CONFIG_SRC/starship" .
cp -r "$CONFIG_SRC/sxhkd" .

cd "$DOTFILES_DIR"  # Return to dotfiles directory

#echo 'Syncing misc/'
#cd misc || exit 1
#rm -rf *
#cp -r "$HOME/.icons/default" .
#cp -r /usr/share/themes/Aesthetic-Night .
#cp -r "$HOME/.local/share/icons/win-fluent" .
#cp -r "$HOME/media/pics/wallpaper-bspwm" .
#cd "$DOTFILES_DIR"

echo '----'
echo 'Data copied successfully!'
echo 'Ready to commit'
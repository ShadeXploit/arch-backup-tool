#!/bin/bash

# Change this to where you stored the backup
BACKUP_DIR="$HOME/arch-backup-restore"

if [ ! -d "$BACKUP_DIR" ]; then
    echo "[!] Backup directory not found: $BACKUP_DIR"
    exit 1
fi

echo "[+] Restoring configs and dotfiles..."

# Restore configs
cp -a "$BACKUP_DIR/.config" ~/
cp -a "$BACKUP_DIR/.local" ~/
cp -a "$BACKUP_DIR/.fonts" ~/
cp -a "$BACKUP_DIR/.icons" ~/
cp -a "$BACKUP_DIR/.themes" ~/

# Restore shell configs
cp -a "$BACKUP_DIR/.bashrc" "$BACKUP_DIR/.zshrc" "$BACKUP_DIR/.profile" "$BACKUP_DIR/.xinitrc" "$BACKUP_DIR/.Xresources" ~/

# Restore SSH and GPG
cp -a "$BACKUP_DIR/.ssh" ~/
cp -a "$BACKUP_DIR/.gnupg" ~/

# Restore scripts/projects if needed
cp -a "$BACKUP_DIR/Scripts" ~/
cp -a "$BACKUP_DIR/Projects" ~/

echo "[+] Installing packages from pacman..."
sudo pacman -S --needed - < "$BACKUP_DIR/pkglist.txt"

echo "[+] You can now install AUR packages with:"
echo "yay -S \$(cat $BACKUP_DIR/aurlist.txt)"

echo "[✓] Restore complete! Reboot or log out and back in to see the effects."

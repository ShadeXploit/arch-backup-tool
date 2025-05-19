#!/bin/bash

# Set backup destination
BACKUP_DIR="$HOME/arch-backup-$(date +%Y%m%d-%H%M%S)"
mkdir -p "$BACKUP_DIR"

echo "[+] Backing up user configuration and dotfiles..."

# Config and dotfiles
cp -a ~/.config "$BACKUP_DIR/"
cp -a ~/.local "$BACKUP_DIR/"
cp -a ~/.fonts "$BACKUP_DIR/" 2>/dev/null
cp -a ~/.icons "$BACKUP_DIR/" 2>/dev/null
cp -a ~/.themes "$BACKUP_DIR/" 2>/dev/null

# Shell config files
cp -a ~/.bashrc ~/.zshrc ~/.profile ~/.xinitrc ~/.Xresources "$BACKUP_DIR/" 2>/dev/null

# SSH and GPG (secure!)
cp -a ~/.ssh "$BACKUP_DIR/" 2>/dev/null
cp -a ~/.gnupg "$BACKUP_DIR/" 2>/dev/null

# Projects or scripts
cp -a ~/Scripts "$BACKUP_DIR/" 2>/dev/null
cp -a ~/Projects "$BACKUP_DIR/" 2>/dev/null

echo "[+] Saving package lists..."

# Pacman packages
pacman -Qqe > "$BACKUP_DIR/pkglist.txt"

# AUR packages (foreign)
pacman -Qqm > "$BACKUP_DIR/aurlist.txt"

echo "[✓] Backup complete: $BACKUP_DIR"

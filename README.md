# arch-backup-tool
A simple Bash script designed to back up your entire Arch Linux user environment. It allows you to easily save and restore your dotfiles, configurations, and installed packages (including AUR) - everything *except* the OS itself.

Perfect for saving and restoring your Arch user environment after a fresh install.

---

## 📦 Features

- Backups:
  - `~/.config/` and `~/.local/` folders
  - Dotfiles like `.bashrc`, `.zshrc`, `.profile`, etc.
  - Fonts, icons, and themes
  - SSH and GPG keys
  - A list of all installed packages (Pacman + AUR)
- Saves backups in a timestamped folder
- Easy restoration with a separate script

---

## 🔧 How to Use

### 📥 1. Clone the repo

git clone https://github.com/your-username/arch-user-backup.git
cd arch-user-backup

### 📥 2. Run the backup script

chmod +x backup-arch-setup.sh
./backup-arch-setup.sh

This will create a folder like:
~/downloads/arch-backup-20250519-150000

---

### 🔁 How to Restore

# Move your backup folder to your new Arch system (e.g., via USB or cloud).

# Run the restore script:
chmod +x restore-arch-setup.sh
./restore-arch-setup.sh


---

**🔐 Security Note**

**This backup includes sensitive data like:**

    SSH private keys

    GPG keyring

    Possibly Wi-Fi credentials

**Make sure to store the backup securely (e.g., encrypt it before uploading to the cloud).**

---

**💡 Future Ideas (Contributions Welcome!)**

    Optional encryption/compression of the backup

    Automatically restore AUR packages

    GUI wrapper or TUI version

    Systemd service for scheduled backups

---
    
**📜 License**

MIT License — free to use, modify, and share.

---

**✨ Author**

Made with love by Shade 💻



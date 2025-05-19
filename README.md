# 🛠️ arch-backup-tool

A simple Bash script to back up your **Arch Linux user environment** — perfect for saving and restoring your setup after a fresh install.

This script backs up your configurations, dotfiles, installed packages (including AUR), and other personal settings — **everything except the base OS**.

---

## 📦 Features

✅ Backs up:
- `~/.config/` and `~/.local/` directories  
- Dotfiles like `.bashrc`, `.zshrc`, `.profile`, etc.  
- Fonts, icons, and themes  
- SSH and GPG keys  
- A list of all installed packages (Pacman + AUR)

📁 Saves backups to a **timestamped** folder  
🔁 Includes an easy restore script

---

## 🔧 How to Use

### 📥 1. Clone the Repository

```bash
cd ~
git clone https://github.com/shadexploit/arch-user-backup.git
cd arch-user-backup
````

### 📦 2. Run the Backup Script

```bash
chmod +x backup-arch-setup.sh
./backup-arch-setup.sh
```

**🗂️ This script will create a backup folder in your home directory (~):**
feel free to move this file into a safe place using USB, external drive, or cloud storage.
example:
```
~/arch-backup-20250519-150000
```

---

## 🔁 Restore After a Fresh Install

### 1. Move your backup folder to your home directory (~) 

Transfer your backup folder to your new Arch system in your home directory (~) using USB, external drive, or cloud storage.

### 2. Run the restore script

```bash
chmod +x restore-arch-setup.sh
./restore-arch-setup.sh
```

---

## 🔐 Security Note

⚠️ This backup may include **sensitive data** such as:

* SSH private keys
* GPG keyring
* Wi-Fi credentials

> 🔒 **Be safe!** Encrypt your backup before uploading or sharing it online.

---

## 💡 Future Ideas (Contributions Welcome!)

* [ ] Optional encryption & compression
* [ ] Automatic AUR package restoration
* [ ] GUI or TUI interface
* [ ] systemd service for scheduled backups

Pull requests are welcome!

---

## 📜 License

MIT License — free to use, modify, and distribute.

---

## ✨ Author

Made with ❤️ by [Shade](https://github.com/shadexploit)

---

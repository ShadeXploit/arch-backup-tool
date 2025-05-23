# 🛠️ arch-backup-tool

A simple Bash script to back up your **Arch Linux user environment** — perfect for saving and restoring your setup after a fresh install.

---

## 📦 Features


✅ **backs up everything except the base OS**

📁 Saves backups to a **timestamped** folder  

🔁 Includes an easy restore script

✅ Backs up:
- `~/.config/` and `~/.local/` directories  
- Dotfiles like `.bashrc`, `.zshrc`, `.profile`, etc.  
- Fonts, icons, and themes  
- SSH and GPG keys  
- A list of all installed packages (Pacman + AUR)
- configurations
- dotfiles
-installed packages (including AUR)

---

## 🔧 How to Use

### 📥 1. Clone the Repository

```bash
cd ~
git clone https://github.com/ShadeXploit/arch-backup-tool.git
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

### 2. Run the restore script
Before executing the script, rename your backup folder to "arch-backup-restore" this allows the script to locate and retrieve your data properly.

```bash
cd ~
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

Made with ❤️ by [Shade](https://github.com/ShadeXploit)
---

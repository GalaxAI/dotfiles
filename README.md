# My dotfiles

Arch + kde plasma 6 and nix where possible

# System install
```bash
archinstall
# ... minimal + grub + multilib
sudo pacman -S git openssh stow
# openssh is optional
```

# Install yay
```
sudo pacman -S --needed git base-devel
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
```
Installing deps
```bash
sudo pacman -S --needed $(grep -v '^#' arch-manager/desktop)


yay -S --needed $(grep -v '^#' aur-manager/desktop)
```
# Enadle ssdm
```bash
systemctl enable sddm
```
## Stow files
```bash
stow --adopt --ignore='home-manager|arch-manager|aur-manager' .
```


## Further improvement
add TUI like install insted of writing command and separte things into lesser files.

Rice kde and save it using
https://github.com/Prayag2/konsave
and add konsave to dotfiles

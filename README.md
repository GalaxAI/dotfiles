# My dotfiles

Arch + kde plasma 6 and nix where possible

# System install
```bash
archinstall
# ... minimal + grub + multilib
# This might be moved to home-manager with development of plasma-manager
sudo pacman -S plasma-dekstop sddm-kcm dolphin-plugins git kitty
systemctl enable sddm
```
# HOW TO USE NIX

# Install from nix arch wiki
...
```bash
nix run nixpkgs#home-manager -- switch --flake dotfiles/#$USER
```
## If This passes now you should have access to home-manager cli
```bash
home-manager switch --flake dotfiles/#$USER
```

installin non nix-deps
```bash
sudo pacman -S --needed $(grep -v '^#' arch-manager/desktop)
yay -S --needed - < aur-manager/desktop
```


## Further improvement
reduce the number of pacman/aur packages and move them to nix

Rice kde and save it using
https://github.com/Prayag2/konsave
and add konsave to dotfiles

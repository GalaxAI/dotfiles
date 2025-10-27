#!/bin/bash

archlinux_files=(
    programming
    plasma
    terminal
    bluetooth
)

aur_files=(
    # laptop
    work
)

archlinux_packages=()

for file in "${archlinux_files[@]}"; do
    while IFS= read -r pkg; do
        archlinux_packages+=("$pkg")
    done < "arch_packages/$file"
done
sudo pacman -Syyu "${archlinux_packages[@]}"

## install aur manager
# ./scripts/install_aur_manager.sh
if command -v paru &> /dev/null; then
    AUR_MANAGER="paru"
else
    AUR_MANAGER="yay"
fi
aur_packages=()
for file in "${aur_files[@]}"; do
    while IFS= read -r pkg; do
        aur_packages+=("$pkg")
    done < "aur_packages/$file"
done

$AUR_MANAGER -S "${aur_packages[@]}"


## finishing

##  install scripts
# ./scripts/sddm.sh
# ./scripts/tailscale.sh

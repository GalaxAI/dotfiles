#!/bin/bash

# Define a function to handle yay installation
yay_install() {
    sudo pacman -S --needed --noconfirm git base-devel
    git clone https://aur.archlinux.org/yay.git
    cd yay
    makepkg -si
    cd .. && sudo rm -r yay
}

paru_install() {
    # TODO paru install
    echo "Implement paru installation"
}

read -p $'Select your AUR helper:\n1) yay (default)\n2) paru\nEnter choice [1-2]: ' choice

# Default to yay if no input is given
choice=${choice:-1}
# Handle selection
if [ "$choice" -eq 2 ]; then
    paru_install
else
    yay_install
fi

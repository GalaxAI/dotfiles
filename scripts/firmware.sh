if ! command -v fwupdmgr &> /dev/null; then
    echo "Installing fwupdmgr..."
    sudo pacman -S --noconfirm fwupd
else
    echo "fwupd is already installed"
fi



fwupdmgr refresh --force

fwupdmgr get-updates
fwupdmgr updates

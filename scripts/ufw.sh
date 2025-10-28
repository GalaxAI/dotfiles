# Install UFW if not already installed
if ! command -v ufw &> /dev/null; then
    echo "Installing UFW..."
    sudo pacman -S --noconfirm ufw
else
    echo "UFW is already installed"
fi

sudo ufw --force reset
sudo ufw default deny incoming
sudo ufw default allow outgoing
sudo ufw allow ssh
sudo ufw allow http
sudo ufw allow https
sudo systemctl enable ufw.service
sudo systemctl start ufw.service
sudo ufw status

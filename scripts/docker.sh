sudo pacman -S docker docker-buildx docker-compose lazydocker

sudo systemctl enable docker
sudo systemctl start docker

sudo usermod -aG docker $USER
newgrp docker

## TODO: migrate to podman

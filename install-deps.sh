#!/usr/bin/env bash

sudo apt-get update
sudo apt-get install -y git cpp i2c-tools gcc flex libncurses-dev

wget https://git.io/JJrEP -O install-photonvision.sh
sudo chmod +x install-photonvision.sh
sudo ./install-photonvision.sh
rm ./install-photonvision.sh
sudo reboot now
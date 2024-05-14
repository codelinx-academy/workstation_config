#!/bin/bash

# ---- Atualizando e fazendo upgrade dos pacotes ---- #
sudo apt update && sudo apt upgrade -y

# ---- Instalando pacotes ---- #
sudo apt install git curl gnome-tweaks texlive texlive-latex-extra pandoc zsh dconf-cli -y
# ---- Baixando OhMyZSH ---- #
sleep 2
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

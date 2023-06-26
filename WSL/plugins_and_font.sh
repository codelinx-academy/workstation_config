#!/bin/bash
# ---- Instala o plugin de syntax highlighting do zsh ---- #
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
sleep 1
# ---- Realizando configurações de font ---- #
mkdir ~/.fonts
sleep 1
sudo curl -L https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Regular.ttf -o ~/.fonts/MesloLGS\ NF\ Regular.ttf
sleep 1
# ---- Definindo fonte MesloLGS NF Regular como a fonte padrão para monospace, tamanho 11 ---- #
sudo gsettings set org.gnome.desktop.interface monospace-font-name "MesloLGS NF Regular 11"
# ---- Instalabdi o tema Powerlevel10k para o Zsh ---- #
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
sleep 1

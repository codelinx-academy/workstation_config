#!/bin/bash

set -e # Sair em caso de falha

# Confirmar instalação de pacotes
read -p "Deseja instalar os pacotes git, curl, gnome-tweaks e zsh? [s/N] " confirm
if [[ $confirm =~ ^[sS]$ ]]; then
  # Atualização do sistema operacional
  sudo apt update && sudo apt upgrade -y

  # Instalação de pacotes
  sudo apt install git curl gnome-tweaks zsh -y
fi

# Confirmar instalação do Oh My Zsh
read -p "Deseja instalar o Oh My Zsh? [s/N] " confirm
if [[ $confirm =~ ^[sS]$ ]]; then
  # Instalação do Oh My Zsh
  sudo sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi

read -p "Deseja instalar o Plugin Syntax Highlighting ? [s/N] " confirm
if [[ $confirm =~ ^[sS]$ ]]; then
# Instalação do plugin Zsh Syntax Highlighting
sudo git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
fi

read -p "Deseja instalar fonte necessaria ? [s/N] " confirm
if [[ $confirm =~ ^[sS]$ ]]; then
# Download da fonte MesloLGS NF Regular
sudo mkdir ~/.fonts
sudo curl -L https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Regular.ttf -o ~/.fonts/MesloLGS\ NF\ Regular.ttf
gsettings set org.gnome.desktop.interface monospace-font-name "MesloLGS NF Regular 11"
fi

read -p "Deseja instalar o thema powerlevel10k ? [s/N] " confirm
if [[ $confirm =~ ^[sS]$ ]]; then
# Instalação do tema Powerlevel10k
sudo git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
# Habilitando plugins
sed -i 's#^ZSH_THEME=.*#ZSH_THEME="powerlevel10k/powerlevel10k"#' ~/.zshrc
sed -i 's#^plugins=.*#plugins=(git zsh-syntax-highlighting)#' ~/.zshrc
fi

# Definindo o shell padrão como Zsh
sudo chsh -s $(which zsh)
echo "Script finalizado com sucesso!, faça logout e login novamente para ativar as alterações"

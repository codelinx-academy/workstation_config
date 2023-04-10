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
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi

echo 'Script finalizado com sucesso!, siga para segunda parte do script "myterminalWSL_part2.sh"'
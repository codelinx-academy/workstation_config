# ---- Importanto Lib ---- #
import os
from time import sleep
# ---- Vars ---- #
packages = ['git','curl','gnome-tweaks', 'zsh']
# ---- Atualizando e fazendo upgrade dos pacotes ---- #
os.system("sudo apt update && sudo apt upgrade -y")
sleep(1)
# ---- Instalando os packages ---- #
for package in packages:
    os.system(f"sudo apt install {package} -y")
    sleep(1)
# ---- Instalando o Oh_My_Zsh ---- #
os.system('sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"')
sleep(1)
# ---- Alterando o shell padrão para zsh ---- #
os.system("sudo chsh -s /bin/zsh")
# ---- Instala o plugin de syntax highlighting do zsh ---- #
os.system('git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting')
sleep(1)
# ---- Realizando configurações de font ---- #
os.makedirs(os.path.expanduser("~/.fonts"), exist_ok=True)
os.system('curl -L https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Regular.ttf -o ~/.fonts/MesloLGS\ NF\ Regular.ttf')
sleep(1)
# ---- Definindo fonte MesloLGS NF Regular como a fonte padrão para monospace, tamanho 11 ---- #
os.system('gsettings set org.gnome.desktop.interface monospace-font-name "MesloLGS NF Regular 11"')
# ---- Instalabdi o tema Powerlevel10k para o Zsh ---- #
os.system('sudo git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k')
sleep(1)
# ---- Definindo tema em ~/.zshrc ---- #
try:
    # Lê o conteúdo do arquivo ~/.zshrc
    with open(os.path.expanduser('~/.zshrc'),'r') as file:
        read_file = file.readlines()
        # Encontra as linhas relevantes e modifica seus valores
        for i, line in enumerate(read_file):
            if line.startswith("ZSH_THEME="):
                read_file[i] = 'ZSH_THEME="powerlevel10k/powerlevel10k"\n'
            elif line.startswith("plugins="):
                read_file[i] = 'plugins=(git zsh-syntax-highlighting)\n'
        
    # Escreve o conteúdo modificado de volta para o arquivo ~/.zshrc
    with open(os.path.expanduser('~/.zshrc'), 'w') as file:
        file.writelines(read_file)
except:
    print('File não localizado ou incapaz de ser modificado.')
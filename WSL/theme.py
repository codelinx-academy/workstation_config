# ---- Importanto Lib ---- #
import os
from time import sleep
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

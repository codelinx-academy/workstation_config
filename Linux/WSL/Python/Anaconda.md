# Comandos uteis do conda:

## Atualiza Conda:
conda update conda && conda update --all

## Utilizar Versão expecifica de pacote:
conda uninstall matplotlib && conda install matplotlib=3.7.3 \
pip uninstall matplotlib && pip install matplotlib==3.7.3

## Cria ambiente virtual vazio
conda create --name env python=3.10

## Cria ambiente virtual com pacotes padroes do conda
conda create --name env python=3.10 anaconda

## Apaga ambiente virtual
conda remove --name env --all

## Entra e sai de ambiente virtual
conda activate myenv
conda deactivate

## Faz a instalaçao/desinstalação de Pacote no ambiente ativado
conda install/remove package \

## Mostra envs
conda env list

## configurando notebook para abrir browser no windows
mkdir ~/.jupyter && cd ~/.jupyter && jupyter notebook --generate-config && echo "c.NotebookApp.browser = '/mnt/c/Arquivos\ de\ Programas/BraveSoftware/Brave-Browser/Application/brave.exe'" >> jupyter_notebook_config.py
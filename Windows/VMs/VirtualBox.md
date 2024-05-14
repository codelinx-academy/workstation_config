# Configurando uma Máquina Virtual no VirtualBox

## Configuração Padrão:
HYPER-V ON:
<p align="center">
<img src="https://github.com/ihanmessias/workstation_config/assets/72288211/77e73d1c-b4b7-405b-98f6-245fca274696" alt="RECURSOS DO WINDOWS">
</p>

1. Configure a memória da máquina virtual para >= **4GB** e defina o número de CPUs para >= **4**
2.  Configure a seção “Rede” e mude o modo de anexação para **_Bridge_**.
3. Configure a seção “Tela”, defina o Controlador Gráfico para **_VBoxVGA_** e a Memória de Vídeo para **_128MB_**.

## Pacotes (Extra - Caso Necessário):
- sudo apt install bzip2 tar gcc make perl
- sudo ./VboxLinuxAdditions.sh

## Permoformance (Caso Necessário):
SISTEMA/ACELERAÇÃO = HYPER-V
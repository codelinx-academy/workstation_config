# Comandos de Administração Vagrant:

Get-Process | Where-Object {$_.Name -like "*ruby*"}
Stop-Process -ID 12345

```bash
vagrant init "nome_da_box"    # Inicializa um novo projeto Vagrant
vagrant up "nome_da_vm"       # Inicia a máquina virtual
vagrant status                # Mostra o estado das máquinas virtuais
vagrant halt "nome_da_vm"     # Desliga a máquina virtual
vagrant destroy "nome_da_vm" -f  # Destroi a máquina virtual
vagrant box list              # Lista as boxes Vagrant instaladas
vagrant box remove "nome_da_box" # Remove uma box Vagrant
```
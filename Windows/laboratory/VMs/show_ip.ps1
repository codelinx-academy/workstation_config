# Lista de todas as suas máquinas virtuais
# Esta é uma lista de nomes das suas máquinas virtuais.
$vms = "brlnx01", "brlnx02", "brlnx03", "brlnx04", "ptlnx01", "ptlnx02", "ptlnx03", "ptlnx04"

# Este é um loop que percorre cada máquina virtual na sua lista.
foreach ($vm in $vms) {
  # O comando 'vagrant ssh' é usado para se conectar à máquina virtual.
  # O comando 'ip addr show eth1' é executado na máquina virtual para obter as informações do endereço IP.
  # O comando 'grep' filtra a saída para mostrar apenas as linhas que contêm 'inet '.
  # O comando 'sed' é usado para extrair apenas o endereço IP da saída.
  $ip = vagrant ssh $vm -c "ip addr show eth1 | grep 'inet ' | sed -e 's/^.*inet //g' -e 's/\/.*$//g'" 2>&1
  
  # Esta linha remove a linha "Connection to 127.0.0.1 closed." que é adicionada pelo comando 'vagrant ssh'.
  $ip = $ip -replace "Connection to 127.0.0.1 closed.", ""
  
  # Finalmente, o nome da máquina virtual e o endereço IP são impressos no formato 'lnx01=192.168.1.75'.
  echo "$vm=$ip"
}
